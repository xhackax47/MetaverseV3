Config = {}

Config.Locale = 'fr'

-- Set the time (in minutes) during the player is outlaw
Config.Timer = 5

-- Set if show alert when player use gun
Config.GunshotAlert = true

-- Set if show when player do carjacking
Config.CarJackingAlert = true

-- Set if show when player fight in melee
Config.MeleeAlert = true

-- Set if show when player fight in melee
Config.DrugSaleAlert = true
Config.BlipDrugSaleTime = 60
Config.BlipDrugSaleRadius = 50.0

-- In seconds
Config.BlipGunTime = 60

-- Blip radius, in float value!
Config.BlipGunRadius = 50.0

-- In seconds
Config.BlipMeleeTime = 10

-- Blip radius, in float value!
Config.BlipMeleeRadius = 50.0

-- In seconds
Config.BlipJackingTime = 30

-- Blip radius, in float value!
Config.BlipJackingRadius = 50.0

-- Show notification when cops steal too?
Config.ShowCopsMisbehave = true

-- Jobs in this table are considered as cops
Config.WhitelistedCops = {
	'police'
}

-- Weapons that do not count as gunshots.
Config.WeaponBlacklist = {
	'WEAPON_GRENADE',
	'WEAPON_BZGAS',
	'WEAPON_MOLOTOV',
	'WEAPON_STICKYBOMB',
	'WEAPON_PROXMINE',
	'WEAPON_SNOWBALL',
	'WEAPON_PIPEBOMB',
	'WEAPON_BALL',
	'WEAPON_SMOKEGRENADE',
	'WEAPON_FLARE',
	'WEAPON_PETROLCAN',
	'WEAPON_FIREEXTINGUISHER',
	'WEAPON_HAZARDCAN',
	'WEAPON_STUNGUN'
}