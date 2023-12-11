local ESX = exports["es_extended"]:getSharedObject()
local ped = PlayerPedId()


local function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(0)
    end
end
RegisterNetEvent('simcard:UseSimcard', function(source, args)
    if Config.randomnumber then
        loadAnimDict("cellphone@")
        TaskPlayAnim(ped, 'cellphone@', 'f_cellphone_text_in', 8.0, 10.0, 8000, 2, 1, false, false, false)
        QBCore.Functions.Progressbar("Change_Num", "Utilisation de la nouvelle carte sim", 8000, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {
            model = "prop_npc_phone_02",
            bone = 28422,
        }, {}, function()
            StopAnimTask(ped, "cellphone@", "f_cellphone_text_in", 8.0)
            ClearPedTasks(ped)
            TriggerServerEvent('checkNumberrand',  item)
        end, function()
            StopAnimTask(ped, "cellphone@", "f_cellphone_text_in", 8.0)
            ClearPedTasks(ped)
            QBCore.Functions.Notify( "Annulé", "error")
        end) 
    else
        local dialog = exports["qb-input"]:ShowInput({
            header = "Metaverse 5G", 
            submitText  = "Nouveau numéro",
            inputs = {
                {
                text = "Modifier votre numéro de téléphone",
                name = "item",
                type = "number",
                isRequired = true,
                }
            },
        })
        if dialog ~= nil then
            item = dialog.item
            local length = string.len(item)
            if length ~= Config.charLen then
                QBCore.Functions.Notify("Invalid Input", "error" )
            else
                loadAnimDict("cellphone@")
                TaskPlayAnim(ped, 'cellphone@', 'f_cellphone_text_in', 8.0, 10.0, 8000, 2, 1, false, false, false)
                QBCore.Functions.Progressbar("Change_Num", "Utilisation de la nouvelle carte sim", 8000, false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {
                    model = "prop_npc_phone_02",
                    bone = 28422,
                }, {}, function()
                    StopAnimTask(ped, "cellphone@", "f_cellphone_text_in", 8.0)
                    ClearPedTasks(ped)
                    TriggerServerEvent('checkNumber',  item)
                end, function()
                    StopAnimTask(ped, "cellphone@", "f_cellphone_text_in", 8.0)
                    ClearPedTasks(ped)
                    QBCore.Functions.Notify( "Annulé", "error")
        end) 
            end
        end
    end
end)


RegisterNetEvent('notify1', function ()
    QBCore.Functions.Notify("Le numéro a bien été modifié.", "primary")
end)

RegisterNetEvent('notify2', function ()
    QBCore.Functions.Notify("Désolé mais ce numéro n'est pas disponible ou ne comporte pas 10 chiffres.", "error")
end)

