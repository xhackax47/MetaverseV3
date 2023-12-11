Config                            = {}

Config.DrawDistance               = 10.0 -- How close do you need to be in order for the markers to be drawn (in GTA units).
Config.Debug                      = ESX.GetConfig().EnableDebug
Config.Marker                     = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}

Config.ReviveReward               = 1000  -- Revive reward, set to 0 if you don't want it enabled
Config.SaveDeathStatus            = true -- Save Death Status?
Config.LoadIpl                    = false -- Disable if you're using fivem-ipl or other IPL loaders

Config.Locale = GetConvar('esx:locale', 'fr')

Config.DistressBlip = {
	Sprite = 310,
	Color = 48,
	Scale = 2.0
}

Config.EarlyRespawnTimer          = 60000 * 1  -- time til respawn is available
Config.BleedoutTimer              = 60000 * 10 * 6 -- time til the player bleeds out

Config.EnablePlayerManagement     = true -- Enable society managing (If you are using esx_society).

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 5000

Config.OxInventory                = ESX.GetConfig().OxInventory
Config.RespawnPoints = {
	{coords = vector3(355.6610, -588.9911, 43.3151), heading = 70.1616}, -- Central Los Santos
	{coords = vector3(1820.4397, 3678.3066, 34.2711), heading = 299.0393} -- Sandy Shores
}

Config.PharmacyItems = {
	{
		title = "Medikit",
		item = "medikit"
	},
	{
		title = "Bandage",
		item = "bandage"
	},
}

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(-677.5386, 325.3771, 83.0832),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(-673.3929, 310.6223, 91.7443)
		},

		Pharmacies = {
			vector3(-664.3443, 322.7477, 82.0832)
		},

		Vehicles = {
			{
				Spawner = vector3(-672.9348, 336.2454, 78.1184),
				InsideShop = vector3(-658.8853, 340.4888, 78.1183),
				Marker = {type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(-676.2455, 345.5062, 78.1184), heading = 81.2973, radius = 4.0},
					{coords = vector3(-684.8647, 363.7365, 78.1184), heading = 86.1809, radius = 4.0},
					{coords = vector3(-662.4404, 361.7747, 78.1184), heading = 82.2824, radius = 6.0}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(-667.3286, 320.9995, 140.1482),
				InsideShop = vector3(-662.9333, 315.2558, 140.1480),
				Marker = {type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(-687.3417, 322.0664, 140.1482), heading = 172.5257, radius = 10.0},
					{coords = vector3(-707.9581, 321.6007, 140.1482), heading = 172.9468, radius = 10.0}
				}
			}
		},

		FastTravels = {
			{
				From = vector3(294.7, -1448.1, 29.0),
				To = {coords = vector3(272.8, -1358.8, 23.5), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(275.3, -1361, 23.5),
				To = {coords = vector3(295.8, -1446.5, 28.9), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(247.3, -1371.5, 23.5),
				To = {coords = vector3(333.1, -1434.9, 45.5), heading = 138.6},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(335.5, -1432.0, 45.50),
				To = {coords = vector3(249.1, -1369.6, 23.5), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(234.5, -1373.7, 20.9),
				To = {coords = vector3(320.9, -1478.6, 28.8), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(317.9, -1476.1, 28.9),
				To = {coords = vector3(238.6, -1368.4, 23.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(237.4, -1373.8, 26.0),
				To = {coords = vector3(251.9, -1363.3, 38.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = TranslateCap('fast_travel')
			},

			{
				From = vector3(256.5, -1357.7, 36.0),
				To = {coords = vector3(235.4, -1372.8, 26.3), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = TranslateCap('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {
	car = {
		ambulance = {
			{model = 'ems1', price = 5000},
			{model = 'ems7', price = 10000}
		},

		doctor = {
			{model = 'ems1', price = 5000},
			{model = 'ems7', price = 10000},
			{model = 'ems4', price = 30000},
			{model = 'ems5', price = 40000},
		},

		chief_doctor = {
			{model = 'ems1', price = 5000},
			{model = 'ems7', price = 10000},
			{model = 'ems4', price = 30000},
			{model = 'ems5', price = 40000},
			{model = 'ems8', price = 50000},
			{model = 'ems9', price = 20000}
		},

		boss = {
			{model = 'ems1', price = 5000},
			{model = 'ems7', price = 10000},
			{model = 'ems4', price = 30000},
			{model = 'ems5', price = 40000},
			{model = 'ems8', price = 50000},
			{model = 'ems9', price = 20000},
			{model = 'ems11', price = 75000}
		}
	},

	helicopter = {
		ambulance = {},

		doctor = {
			{model = 'ems3', price = 250000}
		},

		chief_doctor = {
			{model = 'ems3', price = 250000}
		},

		boss = {
			{model = 'ems3', price = 250000},
			{model = 'seasparrow', price = 300000}
		}
	}
}
