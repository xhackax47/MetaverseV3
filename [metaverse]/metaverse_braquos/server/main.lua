local rob = false
local robbers = {}

RegisterServerEvent('metaverse_braquos:tooFar')
AddEventHandler('metaverse_braquos:tooFar', function(currentStore)
	local source = source
	rob = false
	for _, xPlayer in pairs(ESX.GetExtendedPlayers('job', 'police')) do
		TriggerClientEvent('esx:showNotification', xPlayer.source, TranslateCap('robbery_cancelled_at', Stores[currentStore].nameOfStore))
		TriggerClientEvent('metaverse_braquos:killBlip', xPlayer.source)
	end
	if robbers[source] then
		TriggerClientEvent('metaverse_braquos:tooFar', source)
		ESX.ClearTimeout(robbers[source])
        robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, TranslateCap('robbery_cancelled_at', Stores[currentStore].nameOfStore))
	end
end)

RegisterServerEvent('metaverse_braquos:robberyStarted')
AddEventHandler('metaverse_braquos:robberyStarted', function(currentStore)
	local source  = source
	local xPlayer  = ESX.GetPlayerFromId(source)
	if Stores[currentStore] then
		local store = Stores[currentStore]
		if (os.time() - store.lastRobbed) < Config.TimerBeforeNewRob and store.lastRobbed ~= 0 then
			TriggerClientEvent('esx:showNotification', source, TranslateCap('recently_robbed', Config.TimerBeforeNewRob - (os.time() - store.lastRobbed)))
			return
		end
		if not rob then
			local xPlayers = ESX.GetExtendedPlayers('job', 'police')
			if #xPlayers >= Config.PoliceNumberRequired then
				rob = true
				for i=1, #(xPlayers) do 
					local xPlayer = xPlayers[i]
					TriggerClientEvent('esx:showNotification', xPlayer.source, TranslateCap('rob_in_prog', store.nameOfStore))
					TriggerClientEvent('metaverse_braquos:setBlip', xPlayer.source, Stores[currentStore].position)
				end
				TriggerClientEvent('esx:showNotification', source, TranslateCap('started_to_rob', store.nameOfStore))
				TriggerClientEvent('esx:showNotification', source, TranslateCap('alarm_triggered'))
				TriggerClientEvent('metaverse_braquos:currentlyRobbing', source, currentStore)
				TriggerClientEvent('metaverse_braquos:startTimer', source)
				Stores[currentStore].lastRobbed = os.time()
				robbers[source] = ESX.SetTimeout(store.secondsRemaining * 1000, function()
					rob = false
                    if xPlayer then
                        TriggerClientEvent('metaverse_braquos:robberyComplete', source, store.reward)
                        if Config.GiveBlackMoney then
                            xPlayer.addAccountMoney('black_money', store.reward, "Robbery")
                        else
                            xPlayer.addMoney(store.reward, "Robbery")
                        end
                        local xPlayers = ESX.GetExtendedPlayers('job', 'police')
												for i=1, #(xPlayers) do 
													local xPlayer = xPlayers[i]
                            TriggerClientEvent('esx:showNotification', xPlayer.source, TranslateCap('robbery_complete_at', store.nameOfStore))
                            TriggerClientEvent('metaverse_braquos:killBlip', xPlayer.source)
                        end
                    end
				end)
			else
				TriggerClientEvent('esx:showNotification', source, TranslateCap('min_police', Config.PoliceNumberRequired))
			end
		else
			TriggerClientEvent('esx:showNotification', source, TranslateCap('robbery_already'))
		end
	end
end)
