Config = {}
Config.Locale = GetConvar('esx:locale', 'en')
Config.Visible = true

Config.Items = {
	["bread"] = {
		type = "food",
		prop= "prop_sandwich_01",
		status = 100000,
		remove = true
	},
	
	["water"] = {
		type = "drink",
		prop = "prop_ld_flow_bottle",
		status = 100000,
		remove = true
	},

	["jus_raisin"] = {
		type = "drink",
		prop = "prop_kitch_juicer",
		status = 250000,
		remove = true
	},

}
