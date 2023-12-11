local IsDead = false
local IsAnimated = false

AddEventHandler('metaverse_basicneeds:resetStatus', function()
	TriggerEvent('metaverse_status:set', 'hunger', 500000)
	TriggerEvent('metaverse_status:set', 'thirst', 500000)
	TriggerEvent('metaverse_status:set', 'stress', 1000000)
end)

RegisterNetEvent('metaverse_basicneeds:healPlayer')
AddEventHandler('metaverse_basicneeds:healPlayer', function()
	-- restore hunger & thirst
	TriggerEvent('metaverse_status:set', 'hunger', 1000000)
	TriggerEvent('metaverse_status:set', 'thirst', 1000000)
	TriggerEvent('metaverse_status:set', 'stress', 1000000)

	-- restore hp
	local playerPed = PlayerPedId()
	SetEntityHealth(playerPed, GetEntityMaxHealth(playerPed))
end)

AddEventHandler('esx:onPlayerDeath', function()
	IsDead = true
end)

AddEventHandler('esx:onPlayerSpawn', function(spawn)
	if IsDead then
		TriggerEvent('metaverse_basicneeds:resetStatus')
	end

	IsDead = false	
end)

AddEventHandler('metaverse_status:loaded', function(status)
	TriggerEvent('metaverse_status:registerStatus', 'hunger', 1000000, '#CFAD0F', function(status)
		return Config.Visible
	end, function(status)
		status.remove(100)
	end)

	TriggerEvent('metaverse_status:registerStatus', 'thirst', 1000000, '#0C98F1', function(status)
		return Config.Visible
	end, function(status)
		status.remove(75)
	end)

	TriggerEvent('metaverse_status:registerStatus', 'stress', 1000000, '#cadfff', function(status)
		return false
	end, function(status)
		status.add(200)
	end)

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1000)

			local playerPed  = PlayerPedId()
			local prevHealth = GetEntityHealth(playerPed)
			local health     = prevHealth
			local stressVal  = 0

			TriggerEvent('metaverse_status:getStatus', 'hunger', function(status)
				if status.val == 0 then
					if prevHealth <= 150 then
						health = health - 5
					else
						health = health - 1
					end
				end
			end)

			TriggerEvent('metaverse_status:getStatus', 'thirst', function(status)
				if status.val == 0 then
					if prevHealth <= 150 then
						health = health - 5
					else
						health = health - 1
					end
				end
			end)

			TriggerEvent('metaverse_status:getStatus', 'stress', function(status)
				stressVal = status.val
			end)

			if health ~= prevHealth then
				SetEntityHealth(playerPed, health)
			end

			if (stressVal <= 750000) and (stressVal > 500000) then
				Citizen.Wait(9000)
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE ', 0.15)
			elseif (stressVal <= 500000) and (stressVal > 250000) then
				Citizen.Wait(7000)
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE ', 0.16)
			elseif (stressVal <= 250000) and (stressVal > 100000) then
				Citizen.Wait(5000)
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE ', 0.17)
			elseif (stressVal <= 100000) then
				Citizen.Wait(3000)
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.18)
			end
		end
	end)
end)

AddEventHandler('metaverse_status:onTick', function(data)
	local playerPed  = PlayerPedId()
	local prevHealth = GetEntityHealth(playerPed)
	local health     = prevHealth
	
	for k, v in pairs(data) do
		if v.name == 'hunger' and v.percent == 0 then
			if prevHealth <= 150 then
				health = health - 5
			else
				health = health - 1
			end
		elseif v.name == 'thirst' and v.percent == 0 then
			if prevHealth <= 150 then
				health = health - 5
			else
				health = health - 1
			end
		end
	end
	
	if health ~= prevHealth then SetEntityHealth(playerPed, health) end
end)

AddEventHandler('metaverse_basicneeds:isEating', function(cb)
	cb(IsAnimated)
end)

RegisterNetEvent('metaverse_basicneeds:onUse')
AddEventHandler('metaverse_basicneeds:onUse', function(type, prop_name)
	if not IsAnimated then
		local anim = {dict = 'mp_player_inteat@burger', name = 'mp_player_int_eat_burger_fp', settings = {8.0, -8, -1, 49, 0, 0, 0, 0}}
		IsAnimated = true
		if type == 'food' then
			prop_name = prop_name or 'prop_cs_burger_01'
			anim = {dict = 'mp_player_inteat@burger', name = 'mp_player_int_eat_burger_fp', settings = {8.0, -8, -1, 49, 0, 0, 0, 0}}
		elseif type == 'drink' then
			prop_name = prop_name or 'prop_ld_flow_bottle'
			anim = {dict = 'mp_player_intdrink', name = 'loop_bottle', settings = {1.0, -1.0, 2000, 0, 1, true, true, true}}
		end

		CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(joaat(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict(anim.dict, function()
				TaskPlayAnim(playerPed, anim.dict, anim.name, anim.settings[1], anim.settings[2], anim.settings[3], anim.settings[4], anim.settings[5], anim.settings[6], anim.settings[7], anim.settings[8])
				RemoveAnimDict(anim.dict)

				Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)
	end
end)

-- Backwards compatibility
RegisterNetEvent('metaverse_basicneeds:onEat')
AddEventHandler('metaverse_basicneeds:onEat', function(prop_name)
    local Invoke = GetInvokingResource()

    print(('[^3WARNING^7] ^5%s^7 used ^5metaverse_basicneeds:onEat^7, this method is deprecated and should not be used! Refer to ^5https://documentation.esx-framework.org/addons/metaverse_basicneeds/events/oneat^7 for more info!'):format(Invoke))

    if not prop_name then
        prop_name = 'prop_cs_burger_01'
    end
    TriggerEvent('metaverse_basicneeds:onUse', 'food', prop_name)
end)

RegisterNetEvent('metaverse_basicneeds:onDrink')
AddEventHandler('metaverse_basicneeds:onDrink', function(prop_name)
    local Invoke = GetInvokingResource()

    print(('[^3WARNING^7] ^5%s^7 used ^5metaverse_basicneeds:onDrink^7, this method is deprecated and should not be used! Refer to ^5https://documentation.esx-framework.org/addons/metaverse_basicneeds/events/ondrink^7 for more info!'):format(Invoke))


    if not prop_name then
        prop_name = 'prop_ld_flow_bottle'
    end
    TriggerEvent('metaverse_basicneeds:onUse', 'drink', prop_name)
end)
