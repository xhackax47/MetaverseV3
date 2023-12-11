Config               = {}

Config.DrawDistance  = 10.0
Config.Size          = { x = 1.5, y = 1.5, z = 0.5 }
Config.Color         = { r = 0, g = 128, b = 255 }
Config.Type          = 1

Config.Locale        = GetConvar('esx:locale', 'fr')
Config.MenuPosition  = "right"
Config.OxInventory   = ESX.GetConfig().OxInventory

Config.LicenseEnable = true -- only turn this on if you are using esx_license
Config.LicensePrice  = 50000

Config.Zones = {

	GunShop = {
		Legal = true,
		Blip = {
			Enabled = true,
			Sprite = 110,
			Color = 81,
			Display = 4,
			Scale = 0.7,
			ShortRange = true
		},
		Items = {
			{
				label = "Lampe-Torche",
				name = "flashlight",
				price = 500
			},
			{
				label = "Balle",
				name = "ball",
				price = 500
			},
			{
				label = "Extincteur",
				name = "fireextinguisher",
				price = 1000
			},
			{
				label = "Batte de baseball",
				name = "bat",
				price = 2000
			},
			{
				label = "Bouteille",
				name = "bottle",
				price = 2000
			},
			{
				label = "Pied de biche",
				name = "crowbar",
				price = 2000
			},
			{
				label = "Club de golf",
				name = "golfclub",
				price = 2000
			},
			{
				label = "Marteau",
				name = "hammer",
				price = 2000
			},
			{
				label = "Hachette",
				name = "hatchet",
				price = 2000
			},
			{
				label = "Poing américain",
				name = "knuckle",
				price = 2000
			},
			{
				label = "Couteau",
				name = "knife",
				price = 2000
			},
			{
				label = "Clé à molette",
				name = "wrench",
				price = 2000
			},
			{
				label = "Queue de billard",
				name = "poolcue",
				price = 2000
			},
			{
				label = "Lance-fusée",
				name = "flaregun",
				price = 5000
			},
			{
				label = "Chargeur pistolet",
				name = "pistol_ammo_box",
				price = 2500
			},
			{
				label = "H&K P7",
				name = "snspistol",
				price = 12000
			},
			{
				label = "FN Model 1910",
				name = "vintagepistol",
				price = 20000
			},
			{
				label = "Colt M1911",
				name = "pistol",
				price = 25000
			},
	},
		Locations = {
			vector3(-662.1, -935.3, 20.8),
			vector3(810.2, -2157.3, 28.6),
			vector3(1693.4, 3759.5, 33.7),
			vector3(-330.2, 6083.8, 30.4),
			vector3(252.3, -50.0, 68.9),
			vector3(22.0, -1107.2, 28.8),
			vector3(2567.6, 294.3, 107.7),
			vector3(-1117.5, 2698.6, 17.5),
			vector3(842.4, -1033.4, 27.1)
		}
	},

	BlackWeashop = {
		Legal = false,
		Blip = {
			Enabled = false,
			Sprite = 110,
			Color = 59,
			Display = 4,
			Scale = 0.7,
			ShortRange = true
		},
		Items = {
			{
				label = "Dague",
				name = "dagger",
				price = 3000
			},
			{
				label = "Couteau à cran d'arrêt",
				name = "switchblade",
				price = 3000
			},
			{
				label = "Hachette",
				name = "hatchet",
				price = 3000
			},
			{
				label = "Machette",
				name = "machete",
				price = 5000
			},
			{
				label = "Hache de combat",
				name = "battleaxe",
				price = 5000
			},
			{
				label = "H&K P7",
				name = "snspistol",
				price = 20000
			},
			{
				label = "Colt M1911",
				name = "pistol",
				price = 40000
			},
			{
				label = "Uzi",
				name = "microsmg",
				price = 120000
			},
			{
				label = "Browning BSS",
				name = "dbshotgun",
				price = 130000
			},
			{
				label = "Mossberg 500",
				name = "sawnoffshotgun",
				price = 150000
			},
			{
				label = "Micro Draco AKU",
				name = "compactrifle",
				price = 200000
			},
			{
				label = "AK 47",
				name = "assaultrifle",
				price = 250000
			},
		},
		Locations = {
			vector3(2675.5308, 3499.9893, 52.3033)
		}
	}
}
