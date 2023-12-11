local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add("sling", "Changer la position de l'arme lourde sur le corps.", {}, false, function(source, args)
	TriggerClientEvent("mg-weapon-sling:client:changeSling", source)
end)