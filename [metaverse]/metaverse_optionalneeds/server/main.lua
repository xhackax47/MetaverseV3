ESX.RegisterUsableItem('beer', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('beer', 1)

	TriggerClientEvent('metaverse_status:add', source, 'drunk', 250000)
	TriggerClientEvent('metaverse_status:remove', source, 'stress', 25000)
	TriggerClientEvent('metaverse_optionalneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, TranslateCap('used_beer'))

end)

ESX.RegisterUsableItem('vine', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vine', 1)

	TriggerClientEvent('metaverse_status:add', source, 'drunk', 250000)
	TriggerClientEvent('metaverse_status:remove', source, 'stress', 25000)
	TriggerClientEvent('metaverse_optionalneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, TranslateCap('used_vine'))

end)
