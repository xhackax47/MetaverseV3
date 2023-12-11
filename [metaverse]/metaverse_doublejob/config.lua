Config = {}
Config.Locale = 'fr'
Config.SwitchCommand = 'switchjob'
Config.NotificationCommand = 'showjob'
Config.AdminCommand = 'setjob2'
Config.Timer = 1 -- In Seconds.
Config.Webhook = 'https://discord.com/api/webhooks/991299625870954536/nD6-6s8i_YCDMHIkIVXd72Kgp5DegtlFkjwVAnfp_N-9eZX8NnV0mPUl5f2oY9hPb_LF'
Config.ShowJob = true -- To make the command showjob workable

Config.AdminPermissions = { -- change this as your server ranking ( default are : superadmin | admin | moderator )
	'superadmin',
	'admin',
	--'mod',
}

--	Your Notification System
RegisterNetEvent('metaverse_doublejob:notification')
AddEventHandler('metaverse_doublejob:notification', function(type,msg)
--	Types used: (error | success)
print(msg)
--	exports['mythic_notify']:SendAlert(type,msg)
ESX.ShowNotification(msg)
    --[[
    exports.dxNotify:SendNotification({                    
        text = '<b><i class="fas fa-bell"></i> NOTIFICACIÓN</span></b></br><span style="color: #a9a29f;">'..msg..'',
        type = type,
        timeout = 3000,
        layout = "centerRight"
    })]]--
end)
