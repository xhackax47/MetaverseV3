Config = {}

Config.Item = {
    Require = true,
    name = "radio"
}

Config.KeyMappings = {
    Enabled = true, 
    Key = "PAGEDOWN"
}

Config.ClientNotification = function(msg, type)
    ------------------------------------------------------------------------------------------
    -- Insert your Notification System here. (script uses types ("success", "inform", "error"))
    -------------------------------------------------------------------------------------------
  
    ----- T-Notify -----
    -- if type == "inform" then type = "info" end
    -- exports['t-notify']:Alert({style = type,  message = msg})
    ----------------------
  
    --------- mythic_notify ------
    --exports["mythic_notify"]:DoHudText(type, msg)
    --------------------------------
    ESX.ShowNotification(msg, false, false, 140)
  end
  
  Config.ServerNotification = function(msg, type, player)
    ------------------------------------------------------------------------------------------
    -- Insert your Notification System here. (script uses types ("success", "inform", "error"))
    -------------------------------------------------------------------------------------------
  
    --------- mythic_notify ------
    -- TriggerClientEvent("mythic_notify:client:SendAlert", player, {type = type, text = msg}) 
    --------------------------------
  
    ----- T-Notify ---------------
    --  if type == "inform" then type = "info" end
    --  TriggerClientEvent('t-notify:client:Custom', player, {style = type,title = 'SubZero Interactive:Garages',message = msg,duration = 1000})
    --------------------------------
    TriggerClientEvent('esx:showNotification', player, msg)
  end


--- Resticts in index order
Config.RestrictedChannels = {
    { -- Channel 1
        police = true,
        ambulance = true
    },
    { -- Channel 2
        police = true,
        ambulance = true
    },
    { -- Channel 3
        police = true,
        ambulance = true
    },
    { -- Channel 4
        police = true,
        ambulance = true
    },
    { -- Channel 5
        police = true,
        ambulance = true
    },
    { -- Channel 6
        police = true,
        ambulance = true
    },
    { -- Channel 7
        police = true,
        ambulance = true
    },
    { -- Channel 8
        police = true,
        ambulance = true
    },
    { -- Channel 9
        police = true,
        ambulance = true
    },
    { -- Channel 10
        police = true,
        ambulance = true
    }
}

Config.MaxFrequency = 500

Config.messages = {
    ["not on radio"] = "Vous n'êtes pas connecté à un signal",
    ["on radio"] = "Vous êtes déjà connecté à ce signal",
    ["joined to radio"] = "Vous êtes connecté à : ",
    ["restricted channel error"] = "Vous ne pouvez pas vous connecter à cette fréquence!",
    ["invalid radio"] = "Cette fréquence est indisponible.",
    ["you on radio"] = "Vous êtes déjà connecté à cette fréquence",
    ["you leave"] = "Vous avez quitté la fréquence",
    ['volume radio'] = 'Nouveau volume ',
    ['decrease radio volume'] = 'La radio est déjà réglée sur le volume maximum',
    ['increase radio volume'] = 'La radio est déjà réglée sur le volume le plus bas',
    ['increase decrease radio channel'] = 'Nouvelle fréquence ',
}
