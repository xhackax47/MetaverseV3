Config = {}

Config.checkKeyInterval = 5000				-- Interval to check Keys when player in car | current 5s

Config.BlackList = {						-- Vehicles Script will not work on them
	-- Bikes
	'bmx',
	'cruiser',
	'fixter',
	'scorcher',
	'tribike',
	'tribike2',
	'tribike3'
}

Config.noKeys = {
	-- Hotwire
	HotwireKey = 74,						-- Hotwire key | Currently H
	HotwireChance = 3,						-- Hotwire success chance | Current 1 to 5
	HotwireAlarm = true,					-- Police alert | Current true, if true change the alarm in code to whatever script you have!
	HotwireAlarmChance = 1,					-- The chance to alert the police, only if above is true | Currently 1 to 3
	HotwireWait = 2000,						-- Amount of time to wait every progressbar | Currently 6s
	Hotwire_Stages = {						-- Add here as much stages as you want for the Hotwire | Current 4 stages
		'Préparation du court-circuit',
		'Coupe des câbles',
		'Tentative de court-circuit',
		'Essai de mise en marche du moteur'
	},
	
	-- Search
	SearchKey = 47,							-- Search key | Currently G
	FoundKeyChance = 4,						-- Search key chance | Currently 1 to 8
	
	-- Lockpick
	LockpickBreakChance = 3,				-- The chance for lockpick to break | Currently 1 to 6
	
	-- Texts
	Text = 'Appuyer sur ~p~[H]~w~ pour ~p~Court-circuiter~w~   Appuyer sur ~g~[G]~w~ pour ~g~Chercher',	-- Text
	TextSearched = 'Appuyer sur ~p~[H]~w~ pour ~p~Court-circuiter~w~'							-- Text when vehicle already searched
}

Config.rob = {
	Key = 38,								-- The key to rob NPC keys | Currently E
	RunawayChance = 5,						-- The chance NPC will run with keys | Currently 1 to 10
	Text = 'Appuyer sur ~p~[E]~w~ pour ~p~voler~w~ les clés'
}

Config.key = {
	-- Lock / Unlock
	LockKey = 303,							-- Lock/Unlock key | Currently G
	
	-- GiveKey Command
	PlayerRadius = 8						-- The radius of player to givekey | Currently 8 Meters
}
-- You can find all controls Here ↓
-- https://docs.fivem.net/docs/game-references/controls/

Config.ESX_ProgressBar = true				-- If you want to use ESX progressbars | current true
Config.Custom_ProgressBar = function(Text, Time)
	
	--[[
		if ESX_ProgressBar is set to false then add here your custom progressbar
		for example
		exports['xd_progress']:drawBar(Time, Text)
	]]--
	
end

Config.ESX_Notify = true					-- If you want to use ESX notify | current true
Config.Custom_Notify = function(Text, Time, Type)

	--[[
		if ESX_Notify is set to false then add here your custom notify
		for example
		TriggerEvent('xd_notify:send', Text, Time, 'bottom', true, Type)
	]]--
	
end

Config.Translate = {
	['search'] = 'Recherche dans le véhicule',
	['rob_key'] = 'prends les clés',
	['no_vehicles'] = 'Aucun véhicule à proximité',
	['give_yourself'] = 'Vous ne pouvez pas vous donner de clés',
	['no_players'] = 'Aucun joueur trouvé',
	['give_key'] = 'Vous avez donné vos clés du véhicule %s',
	['no_key'] = 'Vous n\'avez pas les clés',
	['found_key'] = 'Clés trouvées pour le véhicule %s',
	['notfound_key'] = 'Les clés n\'ont pas été trouvées',
	['npc_run'] = 'le conducteur a décidé de s\'enfuir',
	['npc_key'] = 'vous avez pris les clés du véhicule %s',
	['give_key_target'] = 'Vous avez les clés du véhicule %s',
	['lockpick'] = 'Le crochet de serrure s\'est cassé!',
	['hotwire_success'] = 'Court-circuit réussi',
	['hotwire_failed'] = 'Court-circuit raté',
	['locked'] = 'Véhicule verrouillé',
	['unlocked'] = 'Véhicule déverrouillé',
	['not_in_vehicle'] = 'Vous devez être dans le véhicule pour l\'utiliser',
	['not_driver'] = 'Vous devez être le conducteur pour court-circuiter le véhicule.'
}
