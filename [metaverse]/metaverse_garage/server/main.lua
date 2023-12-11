ESX = exports["es_extended"]:getSharedObject()
local vehiclesCache = {}

ESX.RegisterServerCallback('metaverse_garage:getVehiclesInParking', function(source, cb)
  local src = source
	local xPlayer  = ESX.GetPlayerFromId(src)

	MySQL.query('SELECT * FROM `owned_vehicles` WHERE `owner` = @identifier',
	{
		['@identifier'] = xPlayer.identifier,
	}, function(result)

		if result[1] then
			local vehicles = {}
			for i = 1, #result, 1 do
				local currenType = result[i].type

				if currenType == 'helicopter' or currenType == 'airplane' then
					currenType = 'aircraft'
				end
				
				if result[i].parking then
					table.insert(vehicles, {
						vehicle 	= json.decode(result[i].vehicle),
						plate 		= result[i].plate,
						parking   = result[i].parking,
						vehType 	= currenType,
						stored 		= result[i].stored
					})
				end
			end

			cb(vehicles)
		end
	end)
end)

ESX.RegisterServerCallback('metaverse_garage:checkVehicle', function(source, cb, plate)
  local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.query('SELECT * FROM `owned_vehicles` WHERE `owner` = @identifier AND `plate` = @plate',
	{
		['@identifier'] 	= xPlayer.identifier,
		['@plate']     		= plate
	}, function(result)
		local data = {}
		if result[1] then
			if result[1].owner == xPlayer.identifier then
				
				local currenType = result[1].type

				if currenType == 'helicopter' or currenType == 'airplane' then
					currenType = 'aircraft'
				end

				if result[1].type and not result[1].stored then
					table.insert(data, {
						owner = true,
						vehType = currenType
					})
					cb(data)
				end
			end
		else
			cb(false)
		end
	end)
end)

ESX.RegisterServerCallback('metaverse_garage:getPlayersGroup', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	for i = 1, #Config.GroupAdminList, 1 do
		if xPlayer.getGroup() == Config.GroupAdminList[i] then
			cb(true)
		end
	end
end)

RegisterNetEvent('metaverse_garage:vehicleChecking')
AddEventHandler('metaverse_garage:vehicleChecking', function(data)
	local xPlayer = ESX.GetPlayerFromId(source)
	local vehicles = GetAllVehicles()
	local canSpawn = false

	if vehicles[1] ~= nil then
		for i = 1, #vehicles, 1 do 
			if ESX.Math.Trim(GetVehicleNumberPlateText(vehicles[i])) == data.vehicle.plate then
				TriggerClientEvent('metaverse_garage:notify', source, 'error', _K('veh_already'))
				
				return TriggerClientEvent('metaverse_garage:setCoords', source, GetEntityCoords(vehicles[i]))
			end
		end
	end

	if xPlayer.getMoney() >= data.price then
		if data.notFree then
			xPlayer.removeAccountMoney(Config.PayIn, data.price)

			if Config.PayIn == 'bank' then
				TriggerClientEvent('metaverse_garage:notify', src, 'inform', _K('bank_used', ESX.Math.GroupDigits(data.price)))
				-- Trigger your bank resouces
				-- TriggerEvent('kc_banking:AddTransactionHistory', xPlayer.source, "personal", -data.price, "withdraw", 'N/A', "Pay "..data.type) -- DELETE THIS
			end
		end
		canSpawn = true
	else
		TriggerClientEvent('metaverse_garage:notify', xPlayer.source, 'error', _K('not_money'))
	end

	if canSpawn then
		TriggerClientEvent('metaverse_garage:spawnVehicle', xPlayer.source, data)
	end
end)

RegisterServerEvent('metaverse_garage:updateOwnedVehicle')
AddEventHandler('metaverse_garage:updateOwnedVehicle', function(stored, parking, vehicleProps)
	local src = source
	local xPlayer  = ESX.GetPlayerFromId(src)

	MySQL.update('UPDATE owned_vehicles SET `stored` = @stored, `parking` = @parking, `vehicle` = @vehicle WHERE `plate` = @plate AND `owner` = @identifier',
	{
		['@identifier'] = xPlayer.identifier,
		['@vehicle'] 	= json.encode(vehicleProps),
		['@plate'] 		= vehicleProps.plate,
		['@stored']     = stored,
		['@parking']    = parking,
	})
end)

RegisterNetEvent('metaverse_garage:updateStoredVehicle')
AddEventHandler('metaverse_garage:updateStoredVehicle', function(stored, parking, plate)
	local src = source
	local xPlayer  = ESX.GetPlayerFromId(src)
	
	MySQL.update('UPDATE owned_vehicles SET `stored` = @stored, `parking` = @parking WHERE `plate` = @plate AND `owner` = @identifier',
	{
		['@identifier'] = xPlayer.identifier,
		['@plate'] 			= plate,
		['@parking']		= parking,
		['@stored']  		= stored,
	})
end)

RegisterServerEvent('metaverse_garage:updateVehicleProperties')
AddEventHandler('metaverse_garage:updateVehicleProperties', function(plate, vehicleProps)
	MySQL.update('UPDATE owned_vehicles SET `vehicle` = @vehicle WHERE `plate` = @plate',
	{
		['@vehicle'] 	= json.encode(vehicleProps),
		['@plate'] 		= vehicleProps.plate,
	})
end)

RegisterServerEvent('metaverse_garage:impoundVehicle')
AddEventHandler('metaverse_garage:impoundVehicle', function(currentParking, _type)
	MySQL.update('UPDATE owned_vehicles SET `stored` = 0, `parking` = @parking WHERE `type`=@type AND parking IS NULL',
	{
		['@type'] = _type,
		['@parking'] = currentParking
	})
end)

RegisterServerEvent('metaverse_garage:jobsImpoundVehicle')
AddEventHandler('metaverse_garage:jobsImpoundVehicle', function(currentParking, plate, vehicleProps, identifier)
	local xPlayer = ESX.GetPlayerFromIdentifier(identifier)
	local job = xPlayer.getJob()

	MySQL.update('UPDATE owned_vehicles SET `stored` = 0, `parking` = @parking, `vehicle` = @vehicle WHERE `plate` = @plate ',
	{
		['@plate'] = plate,
		['@parking'] = currentParking,
		['@vehicle'] 	= json.encode(vehicleProps),
	}, function(rowsUpdated)
		if rowsUpdated then
			MySQL.query('SELECT owner FROM `owned_vehicles` WHERE `plate` = @plate', 
			{
				['@plate'] = plate
			}, function(result)
				if result[1] then
					local xTarget = ESX.GetPlayerFromIdentifier(result[1].owner)
					TriggerClientEvent('metaverse_garage:notify', xTarget.source, 'inform', _K('target_impounded', plate, job.label))
				end
			end)
		end
		TriggerClientEvent('metaverse_garage:notify', xPlayer.source, 'inform', _K('player_impounded'))
	end)
end)

RegisterNetEvent('metaverse_garage:requestVehicleLock')
AddEventHandler('metaverse_garage:requestVehicleLock', function(netId, lockstatus, plate)
  local src = source
	local xPlayer  = ESX.GetPlayerFromId(src)
  if not plate then return end

	MySQL.query('SELECT owner, peopleWithKeys as count FROM owned_vehicles WHERE `plate` = @plate', 
	{
		['@plate'] = plate
	}, function (result)
		if result and result[1] then
			vehiclesCache[plate] = {}
			vehiclesCache[plate][result[1].owner] = true
			local otherKeys = json.decode(result[1].peopleWithKeys)
			if not otherKeys then otherKeys = {} end
			for k, v in pairs(otherKeys) do
				vehiclesCache[plate][v] = true
			end
			TriggerEvent('metaverse_garage:vehicleLock', xPlayer.source, netId, lockstatus, plate)
		end
	end)
end)

RegisterNetEvent('metaverse_garage:vehicleLock')
AddEventHandler('metaverse_garage:vehicleLock', function(src, netId, lockstatus, plate)
	local xPlayer = ESX.GetPlayerFromId(src)
  local vehicle = NetworkGetEntityFromNetworkId(netId)

  if vehiclesCache[plate] and (vehiclesCache[plate][xPlayer.identifier] or vehiclesCache[plate][xPlayer.job.name]) then
    SetVehicleDoorsLocked(vehicle, lockstatus == 2 and 1 or 2)
    TriggerClientEvent('metaverse_garage:vehLockedEffect', xPlayer.source, netId, lockstatus ~= 2)
  end

end)

RegisterNetEvent('metaverse_garage:giveKeyToPerson')
AddEventHandler('metaverse_garage:giveKeyToPerson', function(target, plate)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xTarget = ESX.GetPlayerFromId(target)
	if not xTarget and not xPlayer then return end

	MySQL.query('SELECT * FROM owner_vehicles WHERE `plate` = @plate AND `owner` = @identifier ', {
		['@plate'] = plate,
		['@identifier'] = xPlayer.identifier
	}, function(result)
		if result[1] then
			for i = 1,#result, 1 do 
				if result[i].owner == xPlayer.identifier then
					
					MySQL.update('UPDATE owned_vehicles SET `peopleWithKeys` = @peopleWithKeys WHERE `plate` = @plate AND `owner` = @identifier', {
						['@plate'] = plate,
						['@identifier'] = xPlayer.identifier,
						['@peopleWithKeys'] = xTarget.identifier
					}, function(rowsUpdated)
						if rowsUpdated > 0 then
							TriggerClientEvent('metaverse_garage:notify', xTarget.source, 'inform', _K('received_keys', plate))
							TriggerClientEvent('metaverse_garage:notify', xPlayer.source, 'inform', _K('given_keys', plate))
						end
					end)
					
					if vehiclesCache[plate] then
						vehiclesCache[plate][xTarget.identifier] = true
					end

				else
					TriggerClientEvent('metaverse_garage:notify', xPlayer.source, 'error', _K('not_yours_veh'))
				end
			end
		end
	end)
end)

RegisterNetEvent('metaverse_garage:filterVehiclesType')
AddEventHandler('metaverse_garage:filterVehiclesType', function()
	MySQL.query('SELECT `type`, `vehicle` FROM `owned_vehicles` WHERE parking IS NULL',{ 
		}, function(result)
			if result then
				for i = 1, #result, 1 do
					local tempType = result[i].type
					if tempType == 'helicopter' or tempType == 'airplane'then
						tempType = 'aircraft'
					end
					for impoundName, impound in pairs(Config.Impound) do
						if tempType == impound.Type then
							if impound.IsDefaultImpound then
								TriggerEvent('metaverse_garage:impoundVehicle', impoundName, result[i].type)
							end
						end
					end
				end
			end
		end)
end)

AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then return end
	TriggerEvent('metaverse_garage:filterVehiclesType')
end)

if Config.AutoDelVeh then
	function DeleteVehTaskCoroutine()
		TriggerClientEvent('metaverse_garage:deleteAllVehicles', -1)
	end

	for i = 1, #Config.DeleteVehiclesAt, 1 do
		TriggerEvent('cron:runAt', Config.DeleteVehiclesAt[i].h, Config.DeleteVehiclesAt[i].m, DeleteVehTaskCoroutine)
	end
end