local seatsTaken = {}

RegisterNetEvent('metaverse_sit:takePlace')
AddEventHandler('metaverse_sit:takePlace', function(objectCoords)
	seatsTaken[objectCoords] = true
end)

RegisterNetEvent('metaverse_sit:leavePlace')
AddEventHandler('metaverse_sit:leavePlace', function(objectCoords)
	if seatsTaken[objectCoords] then
		seatsTaken[objectCoords] = nil
	end
end)

ESX.RegisterServerCallback('metaverse_sit:getPlace', function(source, cb, objectCoords)
	cb(seatsTaken[objectCoords])
end)