-- Votes Metaverse
-- @author Samyr
local QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('onPlayerVote', function(playername, ip, date)
    for _, playerId in ipairs(QBCore.Functions.GetPlayers()) do
        local Player = GetPlayerName(playerId)
        local ped = QBCore.Functions.GetPlayer(playerId)
        --print("DEBUG VOTE | playername = " .. playername .. " + Player == " .. Player)
        if playername == Player then
            if ped then
                local chance = math.random(1, 100)
                if chance <= 10 then
                    ped.Functions.AddItem("sandwich", 3, nil, { ["quality"] = 100 })
                    TriggerClientEvent('inventory:client:ItemBox', src, "sandwich", "add", 3)
                    TriggerClientEvent('QBCore:Notify', src, "Voici un petit truc pour te remercier de ton vote !!!",
                        "success")
                    print("Vote " ..
                        playername ..
                        " | Récompense : 3 " ..
                        QBCore.Shared.Items['sandwich'] ..
                        " | IP : " .. ip .. " | DATE : " .. date .. " avec une chance de " .. chance)
                elseif chance > 11 and chance <= 20 then
                    ped.Functions.AddItem("kurkakola", 3, nil, { ["quality"] = 100 })
                    TriggerClientEvent('inventory:client:ItemBox', src, "kurkakola", "add", 3)
                    TriggerClientEvent('QBCore:Notify', src, "Voici un petit truc pour te remercier de ton vote !!!",
                        "success")
                    print("Vote " ..
                        playername ..
                        " | Récompense : 3 " ..
                        QBCore.Shared.Items['kurkakola'] ..
                        " | IP : " .. ip .. " | DATE : " .. date .. " avec une chance de " .. chance)
                elseif chance > 21 and chance <= 30 then
                    ped.Functions.AddItem("burger-softdrink", 3, nil, { ["quality"] = 100 })
                    TriggerClientEvent('inventory:client:ItemBox', src, "burger-softdrink", "add", 3)
                    TriggerClientEvent('QBCore:Notify', src, "Voici un petit truc pour te remercier de ton vote !!!",
                        "success")
                    print("Vote " ..
                        playername ..
                        " | Récompense : 3 " ..
                        QBCore.Shared.Items['burger-softdrink'] ..
                        " | IP : " .. ip .. " | DATE : " .. date .. " avec une chance de " .. chance)
                elseif chance > 31 and chance <= 40 then
                    ped.Functions.AddItem("burger-bleeder", 3, nil, { ["quality"] = 100 })
                    TriggerClientEvent('inventory:client:ItemBox', src, "burger-bleeder", "add", 3)
                    TriggerClientEvent('QBCore:Notify', src, "Voici un petit truc pour te remercier de ton vote !!!",
                        "success")
                    print("Vote " ..
                        playername ..
                        " | Récompense : 3 " ..
                        QBCore.Shared.Items['burger-bleeder'] ..
                        " | IP : " .. ip .. " | DATE : " .. date .. " avec une chance de " .. chance)
                elseif chance > 41 and chance <= 50 then
                    ped.Functions.AddItem("bandage", 3, nil, { ["quality"] = 100 })
                    TriggerClientEvent('inventory:client:ItemBox', src, "bandage", "add", 3)
                    TriggerClientEvent('QBCore:Notify', src, "Voici un petit truc pour te remercier de ton vote !!!",
                        "success")
                    print("Vote " ..
                        playername ..
                        " | Récompense : 3 " ..
                        QBCore.Shared.Items['bandage'] ..
                        " | IP : " .. ip .. " | DATE : " .. date .. " avec une chance de " .. chance)
                elseif chance > 51 and chance <= 60 then
                    ped.Functions.AddItem("ifaks", 3, nil, { ["quality"] = 100 })
                    TriggerClientEvent('inventory:client:ItemBox', src, "ifaks", "add", 3)
                    TriggerClientEvent('QBCore:Notify', src, "Voici un petit truc pour te remercier de ton vote !!!",
                        "success")
                    print("Vote " ..
                        playername ..
                        " | Récompense : 3 " ..
                        QBCore.Shared.Items['ifaks'] ..
                        " | IP : " .. ip .. " | DATE : " .. date .. " avec une chance de " .. chance)
                elseif chance > 61 and chance <= 70 then
                    ped.Functions.AddItem("vape", 3, nil, { ["quality"] = 100 })
                    TriggerClientEvent('inventory:client:ItemBox', src, "vape", "add", 3)
                    TriggerClientEvent('QBCore:Notify', src, "Voici un petit truc pour te remercier de ton vote !!!",
                        "success")
                    print("Vote " ..
                        playername ..
                        " | Récompense : 3 " ..
                        QBCore.Shared.Items['vape'] ..
                        " | IP : " .. ip .. " | DATE : " .. date .. " avec une chance de " .. chance)
                elseif chance > 71 and chance <= 80 then
                    ped.Functions.AddItem("joint", 3, nil, { ["quality"] = 100 })
                    TriggerClientEvent('inventory:client:ItemBox', src, "joint", "add", 3)
                    TriggerClientEvent('QBCore:Notify', src, "Voici un petit truc pour te remercier de ton vote !!!",
                        "success")
                    print("Vote " ..
                        playername ..
                        " | Récompense : 3 " ..
                        QBCore.Shared.Items['joint'] ..
                        " | IP : " .. ip .. " | DATE : " .. date .. " avec une chance de " .. chance)
                elseif chance > 81 and chance <= 90 then
                    ped.Functions.AddItem("markedbills", 500, nil, { ["quality"] = 100 })
                    TriggerClientEvent('inventory:client:ItemBox', src, "markedbills", "add", 500)
                    TriggerClientEvent('QBCore:Notify', src, "Voici un petit truc pour te remercier de ton vote !!!",
                        "success")
                    print("Vote " ..
                        playername ..
                        " | Récompense : 500 " ..
                        QBCore.Shared.Items['markedbills'] ..
                        " | IP : " .. ip .. " | DATE : " .. date .. " avec une chance de " .. chance)
                else
                    ped.Functions.AddItem("casinochips", 500, nil, { ["quality"] = 100 })
                    TriggerClientEvent('inventory:client:ItemBox', src, "casinochips", "add", 500)
                    TriggerClientEvent('QBCore:Notify', src, "Voici un petit truc pour te remercier de ton vote !!!",
                        "success")
                    print("Vote " ..
                        playername ..
                        " | Récompense : 500 " ..
                        QBCore.Shared.Items['casinochips'] ..
                        " | IP : " .. ip .. " | DATE : " .. date .. " avec une chance de " .. chance)
                end
            else
                print("DEBUG VOTE | Joueur non connecté : " .. playername .. " | IP : " .. ip .. " | DATE : " .. date "| DEBUG ped = " .. ped.PlayerData.charinfo.firstname)
            end
        else
            print("Joueur introuvable : " .. playername .. " | IP : " .. ip .. " | DATE : " .. date)
        end
    end
end)
