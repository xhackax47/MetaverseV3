local processLSDTables, processThionylTables = 0, 0
local isPickingUp, isProcessing = false, false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		if processLSDTables < 1 then
			SpawnLSDProcess()
			Citizen.Wait(500)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		if processThionylTables < 1 then
			SpawnThionylProcess()
			Citizen.Wait(500)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if GetDistanceBetweenCoords(coords, Config.CircleZones.lsdProcessing.coords, true) < 5 then
			if not isProcessing then
				ESX.ShowHelpNotification(_U('lsd_processprompt'))
			end

			if IsControlJustReleased(0, Keys['E']) and not isProcessing then

				if Config.LicenseEnable then
					ESX.TriggerServerCallback('metaverse_licences:checkLicense', function(hasProcessingLicense)
						if hasProcessingLicense then
							Processlsd()
						else
							OpenBuyLicenseMenu('lsd_processing')
						end
					end, GetPlayerServerId(PlayerId()), 'lsd_processing')
				else
					Processlsd()
				end

			end
		else
			Citizen.Wait(500)
		end
	end
end)

function Processlsd()
	isProcessing = true

	ESX.ShowNotification(_U('lsd_processingstarted'))
	TriggerServerEvent('esx_illegal:processLSD')
	local timeLeft = Config.Delays.lsdProcessing / 1000
	local playerPed = PlayerPedId()

	while timeLeft > 0 do
		Citizen.Wait(1000)
		timeLeft = timeLeft - 1

		if GetDistanceBetweenCoords(GetEntityCoords(playerPed), Config.CircleZones.lsdProcessing.coords, false) > 5 then
			ESX.ShowNotification(_U('lsd_processingtoofar'))
			TriggerServerEvent('esx_illegal:cancelProcessing')
			break
		end
	end

	isProcessing = false
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if GetDistanceBetweenCoords(coords, Config.CircleZones.thionylchlorideProcessing.coords, true) < 5 then
			if not isProcessing then
				ESX.ShowHelpNotification(_U('thionylchloride_processprompt'))
			end

			if IsControlJustReleased(0, Keys['E']) and not isProcessing then

				if Config.LicenseEnable then
					ESX.TriggerServerCallback('esx_license:checkLicense', function(hasProcessingLicense)
						if hasProcessingLicense then
							Processthionylchloride()
						else
							OpenBuyLicenseMenu('thionylchloride_processing')
						end
					end, GetPlayerServerId(PlayerId()), 'thionylchloride_processing')
				else
					Processthionylchloride()
				end

			end
		else
			Citizen.Wait(500)
		end
	end
end)

function Processthionylchloride()
	isProcessing = true

	ESX.ShowNotification(_U('thionylchloride_processingstarted'))
	TriggerServerEvent('esx_illegal:processThionylChloride')
	local timeLeft = Config.Delays.thionylchlorideProcessing / 1000
	local playerPed = PlayerPedId()

	while timeLeft > 0 do
		Citizen.Wait(1000)
		timeLeft = timeLeft - 1

		if GetDistanceBetweenCoords(GetEntityCoords(playerPed), Config.CircleZones.thionylchlorideProcessing.coords, false) > 5 then
			ESX.ShowNotification(_U('thionylchloride_processingtoofar'))
			TriggerServerEvent('esx_illegal:cancelProcessing')
			break
		end
	end

	isProcessing = false
end

function SpawnLSDProcess()
	Citizen.Wait(0)
	local processCoords = Config.CircleZones.lsdProcessing.coords

	ESX.Game.SpawnLocalObject('bkr_prop_meth_table01a', processCoords, function(obj)
		PlaceObjectOnGroundProperly(obj)
		FreezeEntityPosition(obj, true)
		processLSDTables = processLSDTables + 1
	end)
end

function SpawnThionylProcess()
	Citizen.Wait(0)
	local processCoords = Config.CircleZones.thionylchlorideProcessing.coords

	ESX.Game.SpawnLocalObject('bkr_prop_meth_table01a', processCoords, function(obj)
		PlaceObjectOnGroundProperly(obj)
		FreezeEntityPosition(obj, true)
		processThionylTables = processThionylTables + 1
	end)
end