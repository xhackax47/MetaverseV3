ESX = exports["es_extended"]:getSharedObject()
local job1, job2
local job1_grade, job2_grade
local timer = 0
local sleepThread = 1000
local allowCommand = true

Citizen.CreateThread(function()

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterCommand(Config.SwitchCommand, function (src, args, raw)
    if timer == 0 and allowCommand then
        TriggerServerEvent('metaverse_doublejob:getsecondjob')
        timer = Config.Timer
        allowCommand = false
    else
        local msg1 = _U('timer', timer)
		local type = 'error'
        TriggerEvent('metaverse_doublejob:notification',type,msg1) 
    end
end, false)

RegisterNetEvent('metaverse_doublejob:returnsecondjob')
AddEventHandler('metaverse_doublejob:returnsecondjob', function(job2, job2_grade)
    job2 = job2
    job2_grade = job2_grade
    job1 = ESX.PlayerData.job.name
    job1_grade = ESX.PlayerData.job.grade
    TriggerServerEvent('metaverse_doublejob:setsecondjob', job1, job1_grade, job2, job2_grade)
	local type = 'success'
    TriggerEvent('metaverse_doublejob:notification',type,_U('switch_job')) 
    Wait(5000)
end)

Citizen.CreateThread(function()
    
    while true do
        if timer > 1 then
            timer = timer-1  
        elseif timer == 1 then
            allowCommand = true
            timer = 0
        end
        Citizen.Wait(sleepThread)
    end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)
