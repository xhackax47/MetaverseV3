local processMethTables = 0
local isPickingUp, isProcessing = false, false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		if processMethTables < 1 then
			SpawnMethProcess()
			Citizen.Wait(500)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if GetDistanceBetweenCoords(coords, Config.CircleZones.MethProcessing.coords, true) < 5 then
			if not isProcessing then
				ESX.ShowHelpNotification(_U('meth_processprompt'))
			end

			if IsControlJustReleased(0, Keys['E']) and not isProcessing then

				if Config.LicenseEnable then
					ESX.TriggerServerCallback('metaverse_licences:checkLicense', function(hasProcessingLicense)
						if hasProcessingLicense then
							ProcessMeth()
						else
							OpenBuyLicenseMenu('meth_processing')
						end
					end, GetPlayerServerId(PlayerId()), 'meth_processing')
				else
					ProcessMeth()
				end

			end
		else
			Citizen.Wait(500)
		end
	end
end)

function ProcessMeth()
	isProcessing = true

	ESX.ShowNotification(_U('meth_processingstarted'))
	TriggerServerEvent('esx_illegal:processMeth')
	local timeLeft = Config.Delays.MethProcessing / 1000
	local playerPed = PlayerPedId()

	while timeLeft > 0 do
		Citizen.Wait(1000)
		timeLeft = timeLeft - 1

		if GetDistanceBetweenCoords(GetEntityCoords(playerPed), Config.CircleZones.MethProcessing.coords, false) > 5 then
			ESX.ShowNotification(_U('meth_processingtoofar'))
			TriggerServerEvent('esx_illegal:cancelProcessing')
			break
		end
	end

	isProcessing = false
end

function SpawnMethProcess()
	Citizen.Wait(0)
	local processCoords = Config.CircleZones.MethProcessing.coords

	ESX.Game.SpawnLocalObject('bkr_prop_meth_table01a', processCoords, function(obj)
		PlaceObjectOnGroundProperly(obj)
		FreezeEntityPosition(obj, true)
		processMethTables = processMethTables + 1
	end)
end