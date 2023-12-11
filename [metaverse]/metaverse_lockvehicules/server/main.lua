local vehicles = {}
local searchedVehicles = {}

RegisterServerEvent('metaverse_lockvehicules:check')
AddEventHandler('metaverse_lockvehicules:check', function(plate)
	local xPlayer = ESX.GetPlayerFromId(source)
	local hasKey, hasSearched = false, false
	
	for k, v in pairs(vehicles) do
		if k == xPlayer.getIdentifier() then
			for i=1, #v, 1 do
				if string.lower(v[i]) == string.lower(plate) then
					hasKey = true
					break
				end
			end
		end
	end
	
	for k, v in pairs(searchedVehicles) do
		if string.lower(v) == string.lower(plate) then
			hasSearched = true
			break
		end
	end
	
	TriggerClientEvent('metaverse_lockvehicules:check', source, hasKey, hasSearched)
end)

RegisterServerEvent('metaverse_lockvehicules:givePlayerKey')
AddEventHandler('metaverse_lockvehicules:givePlayerKey', function(plate)
	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.getIdentifier()
	
	if not vehicles[identifier] then
		vehicles[identifier] = {plate}
	else
		for k, v in pairs(vehicles[identifier]) do
			if v == plate then
				return
			end
		end
		
		table.insert(vehicles[identifier], plate)
	end
end)

RegisterServerEvent('metaverse_lockvehicules:takePlayerKey')
AddEventHandler('metaverse_lockvehicules:takePlayerKey', function(plate)
	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.getIdentifier()
	
	if not vehicles[identifier] then
		return
	else
		for k, v in pairs(vehicles[identifier]) do
			if v == plate then
				table.remove(vehicles[identifier], k)
			end
		end
	end
end)

RegisterServerEvent('metaverse_lockvehicules:setVehicleSearched')
AddEventHandler('metaverse_lockvehicules:setVehicleSearched', function(plate)
	for k, v in pairs(searchedVehicles) do
		if v == plate then
			return
		end
	end
	
	table.insert(searchedVehicles, plate)
end)

ESX.RegisterUsableItem('lockpick', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local vehicle = GetVehiclePedIsIn(ped, false)
	local shouldBreak = false
	
	if vehicle == 0 then
		TriggerClientEvent('metaverse_lockvehicules:sendNotify', source, Config.Translate['no_vehicles'], 3000, 'error')
		return
	end
	
	if GetPedInVehicleSeat(vehicle, -1) ~= ped then
		TriggerClientEvent('metaverse_lockvehicules:sendNotify', source, Config.Translate['not_driver'], 3000, 'error')
		return
	end
	
	for k, v in pairs(Config.BlackList) do
		if GetHashKey(v) == GetEntityModel(vehicle) then
			return
		end
	end
	
	local chance = math.random(1, Config.noKeys.LockpickBreakChance)
	
	if chance == 1 then
		shouldBreak = true
	end
	
	TriggerClientEvent('metaverse_lockvehicules:lockpick', source, shouldBreak)
	
	if chance == 1 then
		Wait(Config.noKeys.HotwireWait * 2)
		xPlayer.removeInventoryItem('lockpick', 1)
	end
end)

ESX.RegisterServerCallback('metaverse_lockvehicules:getKeys', function(source, cb, plate)
	local xPlayer = ESX.GetPlayerFromId(source)
	local hasKey, hasSearched = false, false
	
	for k, v in pairs(vehicles) do
		if k == xPlayer.getIdentifier() then
			for i=1, #v, 1 do
				if plate ~= nil then
					if string.lower(v[i]) == string.lower(plate) then
						hasKey = true
						break
					end
				end
			end
		end
	end
	
	for k, v in pairs(searchedVehicles) do
		if string.lower(v) == string.lower(plate) then
			hasSearched = true
			break
		end
	end
	
	cb(hasKey, hasSearched)
end)

RegisterServerEvent('metaverse_lockvehicules:giveKeyCommand')
AddEventHandler('metaverse_lockvehicules:giveKeyCommand', function(target, plate)
	TriggerClientEvent('metaverse_lockvehicules:giveKeyCommand', target, plate)
end)
