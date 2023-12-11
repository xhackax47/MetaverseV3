-- NE PAS MODIFIER

local holstered = true
local canfire = true
local currWeapon = nil


-- Armes concernées par l'animation

local weapons = {
    -- MELEE
	"WEAPON_STUNGUN",	
	"WEAPON_NIGHTSTICK",
	"WEAPON_FLASHLIGHT",
	"WEAPON_FIREEXTINGUISHER",
	"WEAPON_FLARE",
	"WEAPON_KNIFE",
	"WEAPON_KNUCKLE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_HAMMER",
	"WEAPON_BAT",
	"WEAPON_GOLFCLUB",
	"WEAPON_CROWBAR",
	"WEAPON_BOTTLE",
	"WEAPON_DAGGER",
	"WEAPON_HATCHET",
	"WEAPON_MACHETE",
	"WEAPON_SWITCHBLADE",
	-- EXPLOSIFS
	"WEAPON_PROXMINE",
	"WEAPON_BZGAS",
	"WEAPON_SMOKEGRENADE",
	"WEAPON_MOLOTOV",
	-- PISTOLETS
	"WEAPON_PISTOL",
	"WEAPON_COMBATPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_MACHINEPISTOL",
	-- SMG
	"WEAPON_MICROSMG",	
	"WEAPON_MINISMG",	
	"WEAPON_SMG",	
	-- FUSILS D'ASSAULT
	"WEAPON_ASSAULTRIFLE",	
	"WEAPON_COMPACTRIFLE",
	"WEAPON_CARBINERIFLE",	
	"WEAPON_ADVANCEDRIFLE",	
	"WEAPON_TACTICALRIFLE",	
	"WEAPON_SPECIALCARBINE",
	-- FUSILS A POMPE
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN",	
	"WEAPON_PUMPSHOTGUN",	
	"WEAPON_DBSHOTGUN",
	"WEAPON_MUSKET",
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if DoesEntityExist( GetPlayerPed(-1) ) and not IsEntityDead( GetPlayerPed(-1) ) and not IsPedInAnyVehicle(PlayerPedId(-1), true) then
			if currWeapon ~= GetSelectedPedWeapon(GetPlayerPed(-1)) then
				pos = GetEntityCoords(GetPlayerPed(-1), true)
				rot = GetEntityHeading(GetPlayerPed(-1))

				local newWeap = GetSelectedPedWeapon(GetPlayerPed(-1))
				SetCurrentPedWeapon(GetPlayerPed(-1), currWeapon, true)
				loadAnimDict( "reaction@intimidation@1h" )

				if CheckWeapon(newWeap) then
					if holstered then
						--print(1)
						canFire = false
						TaskPlayAnimAdvanced(GetPlayerPed(-1), "reaction@intimidation@1h", "intro", GetEntityCoords(GetPlayerPed(-1), true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1000)
						SetCurrentPedWeapon(GetPlayerPed(-1), newWeap, true)
						currWeapon = newWeap
						Citizen.Wait(2000)
						ClearPedTasks(GetPlayerPed(-1))
						holstered = false
						canFire = true
					elseif newWeap ~= currWeapon then
						canFire = false
						TaskPlayAnimAdvanced(GetPlayerPed(-1), "reaction@intimidation@1h", "outro", GetEntityCoords(GetPlayerPed(-1), true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1600)
						SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey('WEAPON_UNARMED'), true)
						--ClearPedTasks(GetPlayerPed(-1))
						TaskPlayAnimAdvanced(GetPlayerPed(-1), "reaction@intimidation@1h", "intro", GetEntityCoords(GetPlayerPed(-1), true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1000)
						SetCurrentPedWeapon(GetPlayerPed(-1), newWeap, true)
						currWeapon = newWeap
						Citizen.Wait(2000)
						ClearPedTasks(GetPlayerPed(-1))
						holstered = false
						canFire = true
					end
				else
					if not holstered and CheckWeapon(currWeapon) then
						--print(3)
						canFire = false
						TaskPlayAnimAdvanced(GetPlayerPed(-1), "reaction@intimidation@1h", "outro", GetEntityCoords(GetPlayerPed(-1), true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1600)
						SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey('WEAPON_UNARMED'), true)
						ClearPedTasks(GetPlayerPed(-1))
						SetCurrentPedWeapon(GetPlayerPed(-1), newWeap, true)
						holstered = true
						canFire = true
						currWeapon = newWeap
					else
						--print(4)
						SetCurrentPedWeapon(GetPlayerPed(-1), newWeap, true)
						holstered = false
						canFire = true
						currWeapon = newWeap
					end
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if not canFire then
			DisableControlAction(0, 25, true)
			DisablePlayerFiring(GetPlayerPed(-1), true)
		end
	end
end)

function CheckWeapon(newWeap)
	for i = 1, #weapons do
		if GetHashKey(weapons[i]) == newWeap then
			return true
		end
	end
	return false
end

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end