ESX.RegisterServerCallback('metaverse_autoecole:canYouPay', function(source, cb, type)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getMoney() >= Config.Prices[type] then
		xPlayer.removeMoney(Config.Prices[type], "DMV Purchase")
		TriggerClientEvent('esx:showNotification', source, TranslateCap('you_paid', Config.Prices[type]))
		cb(true)
	else
		cb(false)
	end
end)

AddEventHandler('esx:playerLoaded', function(source)
	TriggerEvent('metaverse_licences:getLicenses', source, function(licenses)
		TriggerClientEvent('metaverse_autoecole:loadLicenses', source, licenses)
	end)
end)

RegisterNetEvent('metaverse_autoecole:addLicense')
AddEventHandler('metaverse_autoecole:addLicense', function(type)
	local source = source

	TriggerEvent('metaverse_licences:addLicense', source, type, function()
		TriggerEvent('metaverse_licences:getLicenses', source, function(licenses)
			TriggerClientEvent('metaverse_autoecole:loadLicenses', source, licenses)
		end)
	end)
end)

