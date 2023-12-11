ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function ()
    while GetResourceState('oxmysql') ~= 'started' do Citizen.Wait(0) end
    while GetResourceState(GetCurrentResourceName()) ~= 'started' do Citizen.Wait(0) end
    if GetResourceState(GetCurrentResourceName()) == 'started' then InitializeBankRobbey() end
end)

local online_cops = 0
local alertTime = 0

function InitializeBankRobbey()
	Citizen.Wait(1000)
	TriggerClientEvent('metaverse_braquobanques:updateOnlineCops', -1, online_cops)
	RconPrint('Braquage banques initialisé\n')
end

AddEventHandler('esx:playerLoaded', function(playerId)
	local xPlayer = ESX.GetPlayerFromId(playerId)
	while not xPlayer do Citizen.Wait(100) end
	TriggerClientEvent('metaverse_braquobanques:updateOnlineCops', xPlayer.source, online_cops)
end)

-- Get Online Police Count:
Citizen.CreateThread(function()
    while true do
        online_cops = GetOnlinePoliceCount()
        TriggerClientEvent('metaverse_braquobanques:updateOnlineCops', -1, online_cops)
        Citizen.Wait(Config.FetchJobs * 1000)
    end
end)

-- Update Pacific Config:
RegisterServerEvent('metaverse_braquobanques:updateConfigSV')
AddEventHandler('metaverse_braquobanques:updateConfigSV', function(id, data)
	Config.Banks[id] = data
	TriggerClientEvent('metaverse_braquobanques:updateConfigCL', -1, id, Config.Banks[id])
end)

RegisterServerEvent('metaverse_braquobanques:inUseSV')
AddEventHandler('metaverse_braquobanques:inUseSV', function(id, state)
	Config.Banks[id].inUse = state
	TriggerClientEvent('metaverse_braquobanques:inUseCL', -1, id, state)
end)

RegisterServerEvent('metaverse_braquobanques:keypadHackedSV')
AddEventHandler('metaverse_braquobanques:keypadHackedSV', function(id, num, state)
	Config.Banks[id].keypads[num].hacked = state
	TriggerClientEvent('metaverse_braquobanques:keypadHackedCL', -1, id, num, state)
end)

RegisterServerEvent('metaverse_braquobanques:doorFreezeSV')
AddEventHandler('metaverse_braquobanques:doorFreezeSV', function(id, num, state)
	Config.Banks[id].doors[num].freeze = state
	TriggerClientEvent('metaverse_braquobanques:doorFreezeCL', -1, id, num, state)
end)

RegisterServerEvent('metaverse_braquobanques:safeRobbedSV')
AddEventHandler('metaverse_braquobanques:safeRobbedSV', function(id, num, state)
	Config.Banks[id].safes[num].robbed = state
	TriggerClientEvent('metaverse_braquobanques:safeRobbedCL', -1, id, num, state)
end)

RegisterServerEvent('metaverse_braquobanques:safeFailedSV')
AddEventHandler('metaverse_braquobanques:safeFailedSV', function(id, num, state)
	Config.Banks[id].safes[num].failed = state
	TriggerClientEvent('metaverse_braquobanques:safeFailedCL', -1, id, num, state)
end)

RegisterServerEvent('metaverse_braquobanques:powerBoxDisabledSV')
AddEventHandler('metaverse_braquobanques:powerBoxDisabledSV', function(id, state)
	Config.Banks[id].powerBox.disabled = state
	TriggerClientEvent('metaverse_braquobanques:powerBoxDisabledCL', -1, id, state)
end)

RegisterServerEvent('metaverse_braquobanques:pettyCashRobbedSV')
AddEventHandler('metaverse_braquobanques:pettyCashRobbedSV', function(id, num, state)
    Config.Banks[id].pettyCash[num].robbed = state
	TriggerClientEvent('metaverse_braquobanques:pettyCashRobbedCL', -1, id, num, state)
end)

RegisterServerEvent('metaverse_braquobanques:safeCrackedSV')
AddEventHandler('metaverse_braquobanques:safeCrackedSV', function(id, state)
	Config.Banks[id].crackSafe.cracked = state
	TriggerClientEvent('metaverse_braquobanques:safeCrackedCL', -1, id, state)
end)

-- Open Vault Door:
RegisterServerEvent('metaverse_braquobanques:openVaultSV')
AddEventHandler('metaverse_braquobanques:openVaultSV', function(open, id)
	TriggerClientEvent('metaverse_braquobanques:openVaultCL', -1, open, id)
end)

-- Sync Vault Doors:
RegisterServerEvent('metaverse_braquobanques:setHeadingSV')
AddEventHandler('metaverse_braquobanques:setHeadingSV', function(id, type, heading)
	Config.Banks[id].doors[type].setHeading = heading
	TriggerClientEvent('metaverse_braquobanques:setHeadingCL', -1, id, type, heading)
end)

-- Event to apply particle FX:
RegisterServerEvent('metaverse_braquobanques:particleFxSV')
AddEventHandler('metaverse_braquobanques:particleFxSV', function(pos, dict, lib)
	TriggerClientEvent('metaverse_braquobanques:particleFxCL', -1, pos, dict, lib)
end)

-- Event to swap models:
RegisterServerEvent('metaverse_braquobanques:modelSwapSV')
AddEventHandler('metaverse_braquobanques:modelSwapSV', function(pos, radius, old_model, new_model)
	TriggerClientEvent('metaverse_braquobanques:modelSwapCL', -1, pos, radius, old_model, new_model)
end)

-- Callback to get inventory item:
ESX.RegisterServerCallback('metaverse_braquobanques:getInventoryItem',function(source, cb, item, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local invItem = xPlayer.getInventoryItem(item)
	if invItem ~= nil then
		if invItem.count >= amount then
			cb(true, invItem)
		else
			cb(false, invItem)
		end 
	else
		return print("^1[ITEM ERROR] - ["..string.upper(item).."] DOES NOT EXIST IN DATABASE!^0")
	end
end)

-- Event to remove inventory item:
RegisterServerEvent('metaverse_braquobanques:removeItem')
AddEventHandler('metaverse_braquobanques:removeItem', function(item, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem(item, count)
end)

-- Event to give safe rewards:
RegisterServerEvent('metaverse_braquobanques:safeReward')
AddEventHandler('metaverse_braquobanques:safeReward', function(id, num)
	local xPlayer = ESX.GetPlayerFromId(source)
	local cfg = Config.Banks[id].safes[num]
	-- Money:
	math.randomseed(GetGameTimer())
	local amount = math.random(cfg.cash.min, cfg.cash.max)
	if cfg.cash.enable then
		if Config.CashInDirty then
			xPlayer.addAccountMoney('black_money', amount)
		else
			xPlayer.addMoney(amount)
		end
		TriggerClientEvent('metaverse_braquobanques:notify', xPlayer.source, Lang['cash_reward']:format(amount))
	end
	-- Items:
	math.randomseed(GetGameTimer())
	for k,v in pairs(cfg.items) do
		if math.random(0,100) <= v.chance then
			local invItem = xPlayer.getInventoryItem(v.name)
			if invItem ~= nil then
				math.randomseed(GetGameTimer())
				local amount = math.random(v.amount.min,v.amount.max)
				xPlayer.addInventoryItem(invItem.name, amount)
				TriggerClientEvent('metaverse_braquobanques:notify', xPlayer.source, Lang['item_reward']:format(amount, invItem.label))
			else
				print("^1[ITEM ERROR] - ["..string.upper(item).."] DOES NOT EXIST IN DATABASE!^0")
			end
		end
		Citizen.Wait(10)
	end
end)

-- Event to give crack safe rewards:
RegisterServerEvent('metaverse_braquobanques:crackSafeReward')
AddEventHandler('metaverse_braquobanques:crackSafeReward', function(id)
	local xPlayer = ESX.GetPlayerFromId(source)
	local cfg = Config.Banks[id].crackSafe.reward
	-- Money:
	math.randomseed(GetGameTimer())
	local amount = math.random(cfg.cash.min, cfg.cash.max)
	if cfg.cash.enable then
		if Config.CashInDirty then
			xPlayer.addAccountMoney('black_money', amount)
		else
			xPlayer.addMoney(amount)
		end
		TriggerClientEvent('metaverse_braquobanques:notify', xPlayer.source, Lang['cash_reward']:format(amount))
	end
	-- Items:
	math.randomseed(GetGameTimer())
	for k,v in pairs(cfg.items) do
		if math.random(0,100) <= v.chance then
			local invItem = xPlayer.getInventoryItem(v.name)
			if invItem ~= nil then
				math.randomseed(GetGameTimer())
				local amount = math.random(v.amount.min,v.amount.max)
				xPlayer.addInventoryItem(invItem.name, amount)
				TriggerClientEvent('metaverse_braquobanques:notify', xPlayer.source, Lang['item_reward']:format(amount, invItem.label))
			else
				print("^1[ITEM ERROR] - ["..string.upper(item).."] DOES NOT EXIST IN DATABASE!^0")
			end
		end
		Citizen.Wait(10)
	end
end)

-- Event to give petty cash rewards:
RegisterServerEvent('metaverse_braquobanques:pettyCashReward')
AddEventHandler('metaverse_braquobanques:pettyCashReward', function(id, num)
	local xPlayer = ESX.GetPlayerFromId(source)
	local cfg = Config.Banks[id].pettyCash[num].reward
	-- Money:
	math.randomseed(GetGameTimer())
	local amount = math.random(cfg.min, cfg.max)
	if cfg.dirty then
		xPlayer.addAccountMoney('black_money', amount)
	else
		xPlayer.addMoney(amount)
	end
	TriggerClientEvent('metaverse_braquobanques:notify', xPlayer.source, Lang['cash_reward']:format(amount))
end)

-- Event to sync powerbox:
RegisterServerEvent('metaverse_braquobanques:syncPowerBoxSV')
AddEventHandler('metaverse_braquobanques:syncPowerBoxSV', function(timer)
	local xPlayer = ESX.GetPlayerFromId(source)
	alertTime = timer
	TriggerClientEvent('metaverse_braquobanques:syncPowerBoxCL', -1, alertTime)
end)

-- Event to send police alert
RegisterServerEvent('metaverse_braquobanques:sendPoliceAlertSV')
AddEventHandler('metaverse_braquobanques:sendPoliceAlertSV', function(coords, msg)
	TriggerClientEvent('metaverse_braquobanques:sendPoliceAlertCL', -1, coords, msg)
end)

-- Event to reset bank robbery:
RegisterServerEvent('metaverse_braquobanques:ResetCurrentBankSV')
AddEventHandler('metaverse_braquobanques:ResetCurrentBankSV', function(id)
	Config.Banks[id].inUse = false
	for k,v in pairs(Config.Banks[id].keypads) do
		v.hacked = false
	end
	for k,v in pairs(Config.Banks[id].doors) do
		v.freeze = true
		v.setHeading = v.heading
		if k == 'cell' or k == 'cell2' then
			TriggerClientEvent('metaverse_braquobanques:modelSwapCL', -1, v.pos, 5.0, GetHashKey('hei_v_ilev_bk_safegate_molten'), v.model)
		end
	end
	for i = 1, #Config.Banks[id].safes do
		Config.Banks[id].safes[i].robbed = false
		Config.Banks[id].safes[i].failed = false
	end
	for k,v in pairs(Config.Banks[id].pettyCash) do
		Config.Banks[id].pettyCash[k].robbed = false
	end
	Config.Banks[id].powerBox.disabled = false
	if Config.Banks[id].crackSafe ~= nil then
		Config.Banks[id].crackSafe.cracked = false
	end
	alertTime = 0
	Wait(100)
	TriggerClientEvent('metaverse_braquobanques:updateConfigCL', -1, id, Config.Banks[id])
	-- Secure News:
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		for k,v in pairs(Config.PoliceJobs) do
			if xPlayer.job.name == v then
				TriggerClientEvent('chatMessage', xPlayers[i], "^2News: | ^7", { 128, 128, 128 }, string.sub('The bank has been secured. All banks are now open again!',0))
			end
		end
	end
end)


-- Function to Get Online Police:
function GetOnlinePoliceCount()
    local xPlayers = ESX.GetPlayers()
	local count = 0
	for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        for k,v in pairs(Config.PoliceJobs) do
            if xPlayer.job.name == v then
				count = count + 1
				break
            end
        end
    end
    return count
end



