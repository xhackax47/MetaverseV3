Config = {}
Config.Locale = GetConvar('esx:locale', 'fr')

Config.DrawDistance = 10.0

Config.Markers = {
	EntryPoint = {
		Type = 21,
		Size = {
			x = 1.0,
			y = 1.0,
			z = 0.5,
		},
		Color = {
			r = 50,
			g = 200,
			b = 50,
		},
	},
	GetOutPoint = {
		Type = 21,
		Size = {
			x = 1.0,
			y = 1.0,
			z = 0.5,
		},
		Color = {
			r = 200,
			g = 51,
			b = 51,
		},
	},
}

Config.Garages = {
	VespucciBoulevard = {
		EntryPoint = {
			x = -285.2,
			y = -886.5,
			z = 31.0,
		},
		SpawnPoint = {
			x = -309.3,
			y = -897.0,
			z = 31.0,
			heading = 351.8,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
	},
	SanAndreasAvenue = {
		EntryPoint = {
			x = 216.4,
			y = -786.6,
			z = 30.8,
		},
		SpawnPoint = {
			x = 218.9,
			y = -779.7,
			z = 30.8,
			heading = 338.8,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
	},
}

Config.JobGarages = {
	Aod = {
		EntryPoint = {
			x = 904.1266,
			y = 3577.3125,
			z = 33.4278,
		},
		SpawnPoint = {
			x = 904.7516,
			y = 3589.4905,
			z = 33.4476,
			heading = 268.6135,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "SandyShores",
		Job = "aod",
	},
	Ballas = {
		EntryPoint = {
			x = 118.4249,
			y = -1951.0374,
			z = 20.7460,
		},
		SpawnPoint = {
			x = 114.2576,
			y = -1948.3456,
			z = 20.8791,
			heading = 50.1370,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "ballas",
	},
	Bandidos = {
		EntryPoint = {
			x = 2517.8269,
			y = 4122.1475,
			z = 38.6307,
		},
		SpawnPoint = {
			x = 2510.7878,
			y = 4112.3916,
			z = 38.6804,
			heading = 25.7162,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "SandyShores",
		Job = "bandidos",
	},
	Bratva = {
		EntryPoint = {
			x = -3198.1145,
			y = 837.9091,
			z = 8.9354,
		},
		SpawnPoint = {
			x = -3205.0432,
			y = 842.6713,
			z = 9.1433,
			heading = 121.8853,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "bratva",
	},
	Cartel = {
		EntryPoint = {
			x = 1413.2047,
			y = 1116.3488,
			z = 114.8379,
		},
		SpawnPoint = {
			x = 1406.1569,
			y = 1118.6570,
			z = 115.0436,
			heading = 89.9034,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "cartel",
	},
	--[[
	Cayocartel = {
		EntryPoint = {
			x = 216.4,
			y = -786.6,
			z = 30.8,
		},
		SpawnPoint = {
			x = 218.9,
			y = -779.7,
			z = 30.8,
			heading = 338.8,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "cayocartel",
	},
	]]--
	Families = {
		EntryPoint = {
			x = -109.1682,
			y = -1591.2456,
			z = 31.8967,
		},
		SpawnPoint = {
			x = -103.6861,
			y = -1590.1494,
			z = 31.8187,
			heading = 318.3862,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "families",
	},
	Marabunta = {
		EntryPoint = {
			x = 1422.6965,
			y = -1502.8439,
			z = 60.8562,
		},
		SpawnPoint = {
			x = 1421.8987,
			y = -1506.7832,
			z = 61.0020,
			heading = 166.9918,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "marabunta",
	},
	Oneill = {
		EntryPoint = {
			x = 2487.3801,
			y = 4961.2393,
			z = 44.7891,
		},
		SpawnPoint = {
			x = 2479.8699,
			y = 4952.9258,
			z = 45.2212,
			heading = 133.4624,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "oneill",
	},
	--[[
	Patria = {
		EntryPoint = {
			x = 216.4,
			y = -786.6,
			z = 30.8,
		},
		SpawnPoint = {
			x = 218.9,
			y = -779.7,
			z = 30.8,
			heading = 338.8,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "patria",
	},
	]]--
	Soa = {
		EntryPoint = {
			x = -59.8643,
			y = 6389.3481,
			z = 31.4902,
		},
		SpawnPoint = {
			x = -64.2204,
			y = 6395.0151,
			z = 31.6973,
			heading = 316.0592,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "PaletoBay",
		Job = "soa",
	},
	Triades = {
		EntryPoint = {
			x = 216.4,
			y = -786.6,
			z = 30.8,
		},
		SpawnPoint = {
			x = 218.9,
			y = -779.7,
			z = 30.8,
			heading = 338.8,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "triades",
	},
	Vagos = {
		EntryPoint = {
			x = 330.8190,
			y = -2028.7334,
			z = 21.2129,
		},
		SpawnPoint = {
			x = 327.2263,
			y = -2034.5193,
			z = 21.1196,
			heading = 46.3617,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "vagos",
	},
	Yakuza = {
		EntryPoint = {
			x = -961.9943,
			y = -1473.0604,
			z = 5.1705,
		},
		SpawnPoint = {
			x = -979.6015,
			y = -1480.0262,
			z = 5.2184,
			heading = 304.4037,
		},
		Sprite = 357,
		Scale = 0.8,
		Colour = 3,
		ImpoundedName = "LosSantos",
		Job = "yakuza",
	},
}

Config.Impounds = {
	LosSantos = {
		GetOutPoint = {
			x = 400.7,
			y = -1630.5,
			z = 29.3,
		},
		SpawnPoint = {
			x = 401.9,
			y = -1647.4,
			z = 29.2,
			heading = 323.3,
		},
		Sprite = 524,
		Scale = 0.8,
		Colour = 1,
		Cost = 3000,
	},
	PaletoBay = {
		GetOutPoint = {
			x = -211.4,
			y = 6206.5,
			z = 31.4,
		},
		SpawnPoint = {
			x = -204.6,
			y = 6221.6,
			z = 30.5,
			heading = 227.2,
		},
		Sprite = 524,
		Scale = 0.8,
		Colour = 1,
		Cost = 3000,
	},
	SandyShores = {
		GetOutPoint = {
			x = 1728.2,
			y = 3709.3,
			z = 33.2,
		},
		SpawnPoint = {
			x = 1722.7,
			y = 3713.6,
			z = 33.2,
			heading = 19.9,
		},
		Sprite = 524,
		Scale = 0.8,
		Colour = 1,
		Cost = 3000,
	},
}

exports("getGarages", function()
	return Config.Garages
end)
exports("getImpounds", function()
	return Config.Impounds
end)
