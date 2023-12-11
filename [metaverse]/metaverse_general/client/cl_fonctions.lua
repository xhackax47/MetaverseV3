-- Script Metaverse RP coté client
-- par xhackax47 sur Github ou Samyr#8239 sur Discord
-------------------------------------------------------
-- Fonctions

-- Porter quelqu'un (/carry)
local function GetClosestPlayer(radius)
	local players = GetActivePlayers()
	local closestDistance = -1
	local closestPlayer = -1
	local playerPed = PlayerPedId()
	local playerCoords = GetEntityCoords(playerPed)

	for _, playerId in ipairs(players) do
		local targetPed = GetPlayerPed(playerId)
		if targetPed ~= playerPed then
			local targetCoords = GetEntityCoords(targetPed)
			local distance = #(targetCoords - playerCoords)
			if closestDistance == -1 or closestDistance > distance then
				closestPlayer = playerId
				closestDistance = distance
			end
		end
	end
	if closestDistance ~= -1 and closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end

local function ensureAnimDict(animDict)
	if not HasAnimDictLoaded(animDict) then
		RequestAnimDict(animDict)
		while not HasAnimDictLoaded(animDict) do
			Wait(0)
		end
	end
	return animDict
end

-- Prendre en otage
function callTakeHostage()
	ClearPedSecondaryTask(PlayerPedId())
	DetachEntity(PlayerPedId(), true, false)

	local canTakeHostage = false
	for i=1, #takeHostage.allowedWeapons do
		if HasPedGotWeapon(PlayerPedId(), takeHostage.allowedWeapons[i], false) then
			if GetAmmoInPedWeapon(PlayerPedId(), takeHostage.allowedWeapons[i]) > 0 then
				canTakeHostage = true 
				foundWeapon = takeHostage.allowedWeapons[i]
				break
			end 					
		end
	end

	if not canTakeHostage then 
		QBCore.Functions.Notify('No Gun To Take Hostage With', 'error', 7500)
	end

	if not takeHostage.InProgress and canTakeHostage then			
		local closestPlayer = GetClosestPlayer(3)
		if closestPlayer then
			local targetSrc = GetPlayerServerId(closestPlayer)
			if targetSrc ~= -1 then
				SetCurrentPedWeapon(PlayerPedId(), foundWeapon, true)
				takeHostage.InProgress = true
				takeHostage.targetSrc = targetSrc
				TriggerServerEvent("TakeHostage:sync",targetSrc)
				ensureAnimDict(takeHostage.agressor.animDict)
				takeHostage.type = "agressor"
			else
				QBCore.Functions.Notify('No Players Nearby', 'error', 7500)
			end
		else
			QBCore.Functions.Notify('No Players Nearby', 'error', 7500)
		end
	end
end 

-- Autorisation Entreprises
local function autorisationJob(job, k)
	for a = 1, #Config.CoffresCoords[k].job do

		if job == Config.CoffresCoords[k].job[a] then
			return true
		end
	end
	return false
end

-- Autorisation Gang
local function autorisationGang(gang, k)
	for a = 1, #Config.CoffresCoords[k].gang do

		if gang == Config.CoffresCoords[k].gang[a] then
			return true
		end
	end
	return false
end