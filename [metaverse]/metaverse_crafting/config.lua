Config = {}

-- Ammo given by default to crafted weapons
Config.WeaponAmmo = 30

Config.Recipes = {
	-- Can be a normal ESX item
	["lockpick"] = { 
		{item = "copper", quantity = 5 }, 
		{item = "rubberband", quantity = 1 },
	},
	["drill"] = { 
		{item = "steel", quantity = 30 }, 
		{item = "copper", quantity = 30 }, 
		{item = "diamond", quantity = 1 },
	},
	["thermite"] = { 
		{item = "iron", quantity = 5 }, 
		{item = "hydrochloric_acid", quantity = 5 },
		{item = "sulfuric_acid", quantity = 5 },
		{item = "petrol", quantity = 5 }, 
	},
	["hackerDevice"] = { 
		{item = "copper", quantity = 35 }, 
		{item = "iron", quantity = 15 }, 
		{item = "diamond", quantity = 1 },
	},
	["hammerwirecutter"] = { 
		{item = "iron", quantity = 5 }, 
		{item = "fixkit", quantity = 1 },
	},

	-- Can be a weapon, must follow this format
	--[[
	['WEAPON_SNSPISTOL'] = { 
		{item = "copper", quantity = 20 }, 
		{item = "iron", quantity = 20 }, 
	},
	]]--
	['snspistol'] = { 
		{item = "copper", quantity = 20 }, 
		{item = "iron", quantity = 20 }, 
	},
	['pistol'] = { 
		{item = "copper", quantity = 30 }, 
		{item = "iron", quantity = 30 }, 
	},
	['microsmg'] = { 
		{item = "copper", quantity = 30 }, 
		{item = "iron", quantity = 30 }, 
	},
	['sawnoffshogtgun'] = { 
		{item = "copper", quantity = 50 }, 
		{item = "iron", quantity = 30 }, 
	},
	['compactrifle'] = { 
		{item = "copper", quantity = 30 }, 
		{item = "iron", quantity = 30 }, 
	},
	['assaultrifle'] = { 
		{item = "copper", quantity = 30 }, 
		{item = "iron", quantity = 30 }, 
	},
	['pistol_ammo_box'] = { 
		{item = "copper", quantity = 10 }, 
		{item = "iron", quantity = 10 }, 
	},
	['rifle_ammo_box'] = { 
		{item = "copper", quantity = 25 }, 
		{item = "iron", quantity = 25 }, 
	},
	['smg_ammo_box'] = { 
		{item = "copper", quantity = 20 }, 
		{item = "iron", quantity = 20 }, 
	},
	['shotgun_ammo_box'] = { 
		{item = "copper", quantity = 20 }, 
		{item = "iron", quantity = 20 }, 
	},
}

-- Enable a shop to access the crafting menu
Config.Shop = {
	useShop = true,
	shopCoordinates = { x=583.6, y=-3109.2, z=5.06 },
	shopName = "Fabrication Illégale",
	shopBlipID = 446,
	zoneSize = { x = 3.0, y = 3.0, z = 3.0 },
	zoneColor = { r = 255, g = 0, b = 0, a = 100 }
}

-- Enable crafting menu through a keyboard shortcut
Config.Keyboard = {
	useKeyboard = false,
	keyCode = 303
}
