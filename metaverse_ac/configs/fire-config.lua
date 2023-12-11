FIREAC = {}
--                                           * 𝗧𝗜𝗣 𝟭 *
--                               𝗧𝘆𝗽𝗲 𝗼𝗳 𝗽𝘂𝗻𝗶𝘀𝗵𝗺𝗲𝗻𝘁𝘀 : BAN | KICK | WARN
--
--                                           * 𝗧𝗜𝗣 𝟮 *
--                                           𝗦𝗰𝗿𝗲𝗲𝗻𝘀𝗵𝗼𝘁
--                              𝗙𝗼𝗿 𝗘𝗻𝗮𝗯𝗹𝗲 𝗦𝗰𝗿𝗲𝗲𝗻𝘀𝗵𝗼𝘁 𝗼𝗽𝘁𝗶𝗼𝗻 𝗱𝗼𝘄𝗻𝗹𝗼𝗮𝗱 𝘁𝗵𝗶𝘀
--   (https://github.com/jaimeadf/discord-screenshot/releases/download/1.3.6/discord-screenshot-1.3.6.zip)
--                                𝗔𝗗𝗗 𝟭 𝗥𝗘𝗦𝗢𝗨𝗥𝗖𝗘 𝗢𝗡 𝗬𝗢𝗨𝗥 𝗦𝗘𝗥𝗩𝗘𝗥

--【 𝗩𝗲𝗿𝘀𝗶𝗼𝗻 𝗖𝗵𝗲𝗰𝗸 𝗳𝗼𝗿 𝘂𝗽𝗱𝗮𝘁𝗲𝘀 】--
FIREAC.Version   = 6.1
--FIREAC.Port = "28081"
FIREAC.Port      = "30106"

--【 𝗟𝗼𝗴 𝗙𝗼𝗿 𝗦𝗲𝗻𝗱 𝗶𝗻 𝗗𝗶𝘀𝗰𝗼𝗿𝗱 】--
FIREAC.Log = {
    Ban        = "https://discord.com/api/webhooks/991317991654440960/e6y9xdKj_GhGY7j8GeGUEmxM2gLp2SVH_UMmVqCCWB-cgg6MBx5ZbOP5t8zmdUjEK10x",
    Connect    = "https://discord.com/api/webhooks/991299625870954536/nD6-6s8i_YCDMHIkIVXd72Kgp5DegtlFkjwVAnfp_N-9eZX8NnV0mPUl5f2oY9hPb_LF",
    Disconnect = "https://discord.com/api/webhooks/991299625870954536/nD6-6s8i_YCDMHIkIVXd72Kgp5DegtlFkjwVAnfp_N-9eZX8NnV0mPUl5f2oY9hPb_LF",
    Exoplosion = "https://discord.com/api/webhooks/991298999430692955/dCiqPQ3msXCKxkbi74sy4SVHJ0lE4SWd-TggjDqquOLZ-gCOWimUn0V464BoYkltf6Ng",
    Error      = "https://discord.com/api/webhooks/991298999430692955/dCiqPQ3msXCKxkbi74sy4SVHJ0lE4SWd-TggjDqquOLZ-gCOWimUn0V464BoYkltf6Ng"
}

--【 𝗦𝗰𝗿𝗲𝗲𝗻𝗦𝗵𝗼𝘁 】--  (𝗧𝗜𝗣 𝟮)
FIREAC.ScreenShot = {
    Enable  = true,
    Format  = "PNG",
    Quality = 1,
    Log     = "https://discord.com/api/webhooks/991318095060803654/JrO4ml_oMSP1b8MqXI5wF262X3FwmyCgThCTj4GRAeJxB5l5Vd6W_wFUSSk0xMQvXqLj"
}

--【 𝗖𝗼𝗻𝗻𝗲𝗰𝘁𝗶𝗼𝗻 𝗦𝗲𝘁𝘁𝗶𝗻𝗴𝘀 】--
FIREAC.Connection = {
    AntiBlackListName = true,
    AntiVPN           = true,
    Log               = "https://discord.com/api/webhooks/991299625870954536/nD6-6s8i_YCDMHIkIVXd72Kgp5DegtlFkjwVAnfp_N-9eZX8NnV0mPUl5f2oY9hPb_LF"
}

--【 𝗠𝗲𝘀𝘀𝗮𝗴𝗲 】--
FIREAC.Message = {
    Kick = "Vous êtes ⚡️ kick du serveur par le système Metaverse AC, N'essayez pas de tricher sur ce serveur.",
    Ban = "Vous êtes ⛔️ banni du serveur par le système Metaverse AC, N'essayez pas de tricher sur ce serveur."
}

--【 𝗔𝗱𝗺𝗶𝗻 𝗠𝗲𝗻𝘂 】--
FIREAC.AdminMenu = {
    Enable         = true,
    Key            = "INSERT",
    MenuPunishment = "BAN"
}

--【 𝗔𝗻𝘁𝗶 𝗧𝗿𝗮𝗰𝗸 𝗣𝗹𝗮𝘆𝗲𝗿 】--
FIREAC.AntiTrackPlayer = true
FIREAC.MaxTrack        = 10
FIREAC.TrackPunishment = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗛𝗲𝗮𝗹𝘁𝗵 𝗛𝗮𝗰𝗸 】--
FIREAC.AntiHealthHack   = true
FIREAC.MaxHealth        = 200
FIREAC.HealthPunishment = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗔𝗿𝗺𝗼𝗿 𝗛𝗮𝗰𝗸 】--
FIREAC.AntiArmorHack   = true
FIREAC.MaxArmor        = 100
FIREAC.ArmorPunishment = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗧𝗮𝘀𝗸𝘀 】--
FIREAC.AntiBlacklistTasks = true
FIREAC.TasksPunishment    = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗣𝗹𝗮𝘆 𝗔𝗻𝗶𝗺𝘀 】--
FIREAC.AntiBlacklistAnims = true
FIREAC.AnimsPunishment    = "WARN"

--【 𝗦𝗮𝗳𝗲 𝗣𝗹𝗮𝘆𝗲𝗿𝘀 】--
FIREAC.SafePlayers      = true
FIREAC.AntiInfinityAmmo = true

--【 𝗔𝗻𝘁𝗶 𝗦𝗽𝗲𝗰𝘁𝗮𝘁𝗲 】--
FIREAC.AntiSpactate       = false
FIREAC.SpactatePunishment = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗪𝗲𝗮𝗽𝗼𝗻 】--
FIREAC.AntiBlackListWeapon  = true
FIREAC.AntiAddWeapon        = true
FIREAC.AntiRemoveWeapon     = true
FIREAC.AntiWeaponsExplosive = true
FIREAC.WeaponPunishment     = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗚𝗼𝗱𝗠𝗼𝗱𝗲 】--
FIREAC.AntiGodMode    = true
FIREAC.GodPunishment  = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗜𝗻𝘃𝗶𝘀𝗶𝗯𝗹𝗲 】--
FIREAC.AntiInvisble         = false
FIREAC.InvisiblePunishment  = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗖𝗵𝗮𝗻𝗴𝗲 𝗦𝗽𝗲𝗲𝗱 】--
FIREAC.AntiChangeSpeed = false
FIREAC.SpeedPunishment = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗙𝗿𝗲𝗲 𝗖𝗮𝗺 】--
FIREAC.AntiFreeCam   = false
FIREAC.CamPunishment = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗥𝗮𝗶𝗻𝗯𝗼𝘄 𝗩𝗲𝗵𝗶𝗰𝗹𝗲 】--
FIREAC.AntiRainbowVehicle  = true
FIREAC.RainbowPunishment   = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗔𝗶𝗺 𝗕𝗼𝘁 】--
FIREAC.AntiAimBot       = true
FIREAC.AimBotPunishment = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗣𝗹𝗮𝘁𝗲 】--
FIREAC.AntiPlateChanger   = true
FIREAC.AntiBlackListPlate = true
FIREAC.PlatePunishment    = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗩𝗶𝘀𝗶𝗼𝗻 】--
FIREAC.AntiNightVision   = true
FIREAC.AntiThermalVision = true
FIREAC.VisionPunishment  = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗦𝘂𝗽𝗲𝗿 𝗝𝘂𝗺𝗽 】--
FIREAC.AntiSuperJump  = true
FIREAC.JumpPunishment = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗧𝗲𝗹𝗲𝗽𝗼𝗿𝘁 】--
FIREAC.AntiTeleport        = false
FIREAC.MaxFootDistence     = 200
FIREAC.MaxVehicleDistence  = 600
FIREAC.TeleportPunishment  = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗣𝗲𝗱 𝗖𝗵𝗮𝗻𝗴𝗲𝗿 】--
FIREAC.AntiPedChanger       = true
FIREAC.PedChangePunishment  = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗜𝗻𝗳𝗶𝗻𝗶𝘁𝗲 𝗦𝘁𝗮𝗺𝗶𝗻𝗮 】--
FIREAC.AntiInfiniteStamina    = true
FIREAC.InfinitePunishment     = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗥𝗮𝗴𝗱𝗼𝗹𝗹 】--
FIREAC.AntiRagdoll           = false
FIREAC.RagdollPunishment     = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗠𝗲𝗻𝘆𝗼𝗼 】--
FIREAC.AntiMenyoo           = false
FIREAC.MenyooPunishment     = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗔𝗶𝗺 𝗔𝘀𝘀𝗶𝘀𝘁 】--
FIREAC.AntiAimAssist        = true
FIREAC.AimAssistPunishment  = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗥𝗲𝘀𝗼𝘂𝗿𝗰𝗲 】--
FIREAC.AntiResourceStoper     = false
FIREAC.AntiResourceStarter    = false
FIREAC.AntiResourceRestarter  = false
FIREAC.ResourcePunishment     = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗖𝗵𝗮𝗻𝗴𝗲 𝗙𝗹𝗮𝗴 】--
FIREAC.AntiTinyPed        = true
FIREAC.PedFlagPunishment  = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗦𝘂𝗶𝗰𝗶𝗱𝗲 】--
FIREAC.AntiSuicide   = false
FIREAC.SuiPunishment = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗖𝗼𝗹𝗹𝗲𝗰𝘁𝗲𝗱 𝗣𝗶𝗰𝗸𝘂𝗽 】--
FIREAC.AntiCollectedPickup = true
FIREAC.PickupePunishment   = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗖𝗵𝗮𝘁 】--
FIREAC.AntiSpamChat          = true
FIREAC.MaxMessage            = 10
FIREAC.CoolDownSec           = 3
FIREAC.ChatPunishment        = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗖𝗼𝗺𝗺𝗮𝗻𝗱 】--
FIREAC.AntiBlackListCommands = true
FIREAC.CMDPunishment         = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗖𝗵𝗮𝗻𝗴𝗲 𝗗𝗮𝗺𝗮𝗴𝗲 】--
FIREAC.AntiWeaponDamageChanger   = true
FIREAC.AntiVehicleDamageChanger  = true
FIREAC.DamagePunishment          = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗪𝗼𝗿𝗱 】--
FIREAC.AntiBlackListWord   = true
FIREAC.WordPunishment      = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗕𝗿𝗶𝗻𝗴 𝗔𝗹𝗹 】--
FIREAC.AntiBringAll       = true
FIREAC.BringAllPunishment = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗧𝗿𝗶𝗴𝗴𝗲𝗿 】--
FIREAC.AntiBlackListTrigger = true
FIREAC.AntiSpamTrigger      = true
FIREAC.TriggerPunishment    = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗖𝗹𝗲𝗮𝗿 𝗣𝗲𝗱 𝗧𝗮𝘀𝗸𝘀 】--
FIREAC.AntiClearPedTasks   = false
FIREAC.MaxClearPedTasks    = 5
FIREAC.CPTPunishment       = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗧𝗮𝘇𝗲 𝗣𝗹𝗮𝘆𝗲𝗿𝘀 】--
FIREAC.AntiTazePlayers = false
FIREAC.MaxTazeSpam     = 3
FIREAC.TazePunishment  = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗜𝗻𝗷𝗲𝗰𝘁 】--
FIREAC.AntiInject        = true
FIREAC.InjectPunishment  = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗘𝘅𝗽𝗹𝗼𝘀𝗶𝗼𝗻 】--
FIREAC.AntiBlackListExplosion   = true
FIREAC.AntiExplosionSpam        = true
FIREAC.MaxExplosion             = 10
FIREAC.ExplosionSpamPunishment  = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗘𝗻𝘁𝗶𝘁𝘆 𝗦𝗽𝗮𝘄𝗻𝗲𝗿 】--
FIREAC.AntiBlackListObject   = false
FIREAC.AntiBlackListPed      = false
FIREAC.AntiBlackListBuilding = true
FIREAC.AntiBlackListVehicle  = true
FIREAC.EntityPunishment      = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗘𝗻𝘁𝗶𝘁𝘆 𝗦𝗽𝗮𝗺𝗲𝗿 】--
FIREAC.AntiSpawnNPC      = false

FIREAC.AntiSpamVehicle   = false
FIREAC.MaxVehicle        = 10

FIREAC.AntiSpamPed       = false
FIREAC.MaxPed            = 4

FIREAC.AntiSpamObject    = true
FIREAC.MaxObject         = 15

FIREAC.SpamPunishment    = "WARN"

--【 𝗔𝗻𝘁𝗶 𝗖𝗵𝗮𝗻𝗴𝗲 𝗣𝗲𝗿𝗺 】--
FIREAC.AntiChangePerm    = true
FIREAC.PermPunishment    = "KICK"

--【 𝗔𝗻𝘁𝗶 𝗣𝗹𝗮𝘆 𝗦𝗼𝘂𝗻𝗱 】--
FIREAC.AntiPlaySound    = true
FIREAC.SoundPunishment  = "WARN"