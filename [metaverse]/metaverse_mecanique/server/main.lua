local PlayersHarvesting, PlayersHarvesting2, PlayersHarvesting3, PlayersCrafting, PlayersCrafting2, PlayersCrafting3  = {}, {}, {}, {}, {}, {}

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'mechanic', Config.MaxInService)
end

TriggerEvent('gcphone:registerNumber', 'mechanic', TranslateCap('mechanic_customer'), true, true)
TriggerEvent('metaverse_society:registerSociety', 'mechanic', 'mechanic', 'society_mechanic', 'society_mechanic', 'society_mechanic', {type = 'private'})

local function Harvest(source)
	SetTimeout(4000, function()

		if PlayersHarvesting[source] == true then
			local xPlayer = ESX.GetPlayerFromId(source)
			local GazBottleQuantity = xPlayer.getInventoryItem('gazbottle').count

			if GazBottleQuantity >= 5 then
				TriggerClientEvent('esx:showNotification', source, TranslateCap('you_do_not_room'))
			else
				xPlayer.addInventoryItem('gazbottle', 1)
				Harvest(source)
			end
		end

	end)
end

RegisterServerEvent('metaverse_mecanique:startHarvest')
AddEventHandler('metaverse_mecanique:startHarvest', function()
	local source = source
	PlayersHarvesting[source] = true
	TriggerClientEvent('esx:showNotification', source, TranslateCap('recovery_gas_can'))
	Harvest(source)
end)

RegisterServerEvent('metaverse_mecanique:stopHarvest')
AddEventHandler('metaverse_mecanique:stopHarvest', function()
	local source = source
	PlayersHarvesting[source] = false
end)

local function Harvest2(source)
	SetTimeout(4000, function()

		if PlayersHarvesting2[source] == true then
			local xPlayer = ESX.GetPlayerFromId(source)
			local FixToolQuantity = xPlayer.getInventoryItem('fixtool').count

			if FixToolQuantity >= 5 then
				TriggerClientEvent('esx:showNotification', source, TranslateCap('you_do_not_room'))
			else
				xPlayer.addInventoryItem('fixtool', 1)
				Harvest2(source)
			end
		end

	end)
end

RegisterServerEvent('metaverse_mecanique:startHarvest2')
AddEventHandler('metaverse_mecanique:startHarvest2', function()
	local source = source
	PlayersHarvesting2[source] = true
	TriggerClientEvent('esx:showNotification', source, TranslateCap('recovery_repair_tools'))
	Harvest2(source)
end)

RegisterServerEvent('metaverse_mecanique:stopHarvest2')
AddEventHandler('metaverse_mecanique:stopHarvest2', function()
	local source = source
	PlayersHarvesting2[source] = false
end)

local function Harvest3(source)
	SetTimeout(4000, function()

		if PlayersHarvesting3[source] == true then
			local xPlayer = ESX.GetPlayerFromId(source)
			local CaroToolQuantity = xPlayer.getInventoryItem('carotool').count
			if CaroToolQuantity >= 5 then
				TriggerClientEvent('esx:showNotification', source, TranslateCap('you_do_not_room'))
			else
				xPlayer.addInventoryItem('carotool', 1)
				Harvest3(source)
			end
		end

	end)
end

RegisterServerEvent('metaverse_mecanique:startHarvest3')
AddEventHandler('metaverse_mecanique:startHarvest3', function()
	local source = source
	PlayersHarvesting3[source] = true
	TriggerClientEvent('esx:showNotification', source, TranslateCap('recovery_body_tools'))
	Harvest3(source)
end)

RegisterServerEvent('metaverse_mecanique:stopHarvest3')
AddEventHandler('metaverse_mecanique:stopHarvest3', function()
	local source = source
	PlayersHarvesting3[source] = false
end)

local function Craft(source)
	SetTimeout(4000, function()

		if PlayersCrafting[source] == true then
			local xPlayer = ESX.GetPlayerFromId(source)
			local GazBottleQuantity = xPlayer.getInventoryItem('gazbottle').count

			if GazBottleQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, TranslateCap('not_enough_gas_can'))
			else
				xPlayer.removeInventoryItem('gazbottle', 1)
				xPlayer.addInventoryItem('blowpipe', 1)
				Craft(source)
			end
		end

	end)
end

RegisterServerEvent('metaverse_mecanique:startCraft')
AddEventHandler('metaverse_mecanique:startCraft', function()
	local source = source
	PlayersCrafting[source] = true
	TriggerClientEvent('esx:showNotification', source, TranslateCap('assembling_blowtorch'))
	Craft(source)
end)

RegisterServerEvent('metaverse_mecanique:stopCraft')
AddEventHandler('metaverse_mecanique:stopCraft', function()
	local source = source
	PlayersCrafting[source] = false
end)

local function Craft2(source)
	SetTimeout(4000, function()

		if PlayersCrafting2[source] == true then
			local xPlayer = ESX.GetPlayerFromId(source)
			local FixToolQuantity = xPlayer.getInventoryItem('fixtool').count

			if FixToolQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, TranslateCap('not_enough_repair_tools'))
			else
				xPlayer.removeInventoryItem('fixtool', 1)
				xPlayer.addInventoryItem('fixkit', 1)
				Craft2(source)
			end
		end

	end)
end

RegisterServerEvent('metaverse_mecanique:startCraft2')
AddEventHandler('metaverse_mecanique:startCraft2', function()
	local source = source
	PlayersCrafting2[source] = true
	TriggerClientEvent('esx:showNotification', source, TranslateCap('assembling_repair_kit'))
	Craft2(source)
end)

RegisterServerEvent('metaverse_mecanique:stopCraft2')
AddEventHandler('metaverse_mecanique:stopCraft2', function()
	local source = source
	PlayersCrafting2[source] = false
end)

local function Craft3(source)
	SetTimeout(4000, function()

		if PlayersCrafting3[source] == true then
			local xPlayer = ESX.GetPlayerFromId(source)
			local CaroToolQuantity = xPlayer.getInventoryItem('carotool').count

			if CaroToolQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, TranslateCap('not_enough_body_tools'))
			else
				xPlayer.removeInventoryItem('carotool', 1)
				xPlayer.addInventoryItem('carokit', 1)
				Craft3(source)
			end
		end

	end)
end

RegisterServerEvent('metaverse_mecanique:startCraft3')
AddEventHandler('metaverse_mecanique:startCraft3', function()
	local source = source
	PlayersCrafting3[source] = true
	TriggerClientEvent('esx:showNotification', source, TranslateCap('assembling_body_kit'))
	Craft3(source)
end)

RegisterServerEvent('metaverse_mecanique:stopCraft3')
AddEventHandler('metaverse_mecanique:stopCraft3', function()
	local source = source
	PlayersCrafting3[source] = false
end)

RegisterServerEvent('metaverse_mecanique:onNPCJobMissionCompleted')
AddEventHandler('metaverse_mecanique:onNPCJobMissionCompleted', function()
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local total   = math.random(Config.NPCJobEarnings.min, Config.NPCJobEarnings.max);

	if xPlayer.job.grade >= 3 then
		total = total * 2
	end

	TriggerEvent('metaverse_addonaccount:getSharedAccount', 'society_mechanic', function(account)
		account.addMoney(total)
	end)

	TriggerClientEvent("esx:showNotification", source, TranslateCap('your_comp_earned').. total)
end)

ESX.RegisterUsableItem('blowpipe', function(source)
	local source = source
	local xPlayer  = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('blowpipe', 1)

	TriggerClientEvent('metaverse_mecanique:onHijack', source)
	TriggerClientEvent('esx:showNotification', source, TranslateCap('you_used_blowtorch'))
end)

ESX.RegisterUsableItem('fixkit', function(source)
	local source = source
	local xPlayer  = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('fixkit', 1)

	TriggerClientEvent('metaverse_mecanique:onFixkit', source)
	TriggerClientEvent('esx:showNotification', source, TranslateCap('you_used_repair_kit'))
end)

ESX.RegisterUsableItem('carokit', function(source)
	local source = source
	local xPlayer  = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('carokit', 1)

	TriggerClientEvent('metaverse_mecanique:onCarokit', source)
	TriggerClientEvent('esx:showNotification', source, TranslateCap('you_used_body_kit'))
end)

RegisterServerEvent('metaverse_mecanique:getStockItem')
AddEventHandler('metaverse_mecanique:getStockItem', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('metaverse_addoninventory:getSharedInventory', 'society_mechanic', function(inventory)
		local item = inventory.getItem(itemName)

		-- is there enough in the society?
		if count > 0 and item.count >= count then

			-- can the player carry the said amount of x item?
			if xPlayer.canCarryItem(itemName, count) then
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				xPlayer.showNotification(TranslateCap('have_withdrawn', count, item.label))
			else
				xPlayer.showNotification(TranslateCap('player_cannot_hold'))
			end
		else
			xPlayer.showNotification(TranslateCap('invalid_quantity'))
		end
	end)
end)

ESX.RegisterServerCallback('metaverse_mecanique:getStockItems', function(source, cb)
	TriggerEvent('metaverse_addoninventory:getSharedInventory', 'society_mechanic', function(inventory)
		cb(inventory.items)
	end)
end)

RegisterServerEvent('metaverse_mecanique:putStockItems')
AddEventHandler('metaverse_mecanique:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('metaverse_addoninventory:getSharedInventory', 'society_mechanic', function(inventory)
		local item = inventory.getItem(itemName)
		local playerItemCount = xPlayer.getInventoryItem(itemName).count

		if item.count >= 0 and count <= playerItemCount then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			xPlayer.showNotification(TranslateCap('invalid_quantity'))
		end

		xPlayer.showNotification(TranslateCap('have_deposited', count, item.label))
	end)
end)

ESX.RegisterServerCallback('metaverse_mecanique:getPlayerInventory', function(source, cb)
	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({items = items})
end)
