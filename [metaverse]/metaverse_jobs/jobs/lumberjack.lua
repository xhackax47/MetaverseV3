Config.Jobs.lumberjack = {

	BlipInfos = {
		Sprite = 237,
		Color = 4
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'youga',
			Trailer = 'none',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = 1200.63, y = -1276.87, z = 35.38},
			Size  = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 50, g = 200, b = 50},
			Marker= 30,
			Blip = true,
			Name = _U('lj_locker_room'),
			Type = 'cloakroom',
			Hint = _U('cloak_change')
		},

		Wood = {
			Pos = {x = -534.32, y = 5373.79, z = 69.50},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 50, g = 200, b = 50},
			Marker = 1,
			Blip = true,
			Name = _U('lj_mapblip'),
			Type = 'work',
			Item = {
				{
					name = _U('lj_wood'),
					db_name = 'wood',
					time = 3,
					max = 20,
					add = 1,
					remove = 0,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 100
				}
			},
			Hint = _U('lj_pickup')
		},

		CuttedWood = {
			Pos = {x = -579.61, y = 5304.87, z = 69.25},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 50, g = 200, b = 50},
			Marker = 1,
			Blip = true,
			Name = _U('lj_woodcutting'),
			Type = 'work',
			Item = {
				{
					name = _U('lj_cutwood'),
					db_name = 'cutted_wood',
					time = 5,
					max = 20,
					add = 1,
					remove = 1,
					requires = 'wood',
					requires_name = _U('lj_wood'),
					drop = 100
				}
			},
			Hint = _U('lj_cutwood_button')
		},

		Planks = {
			Pos = {x = -504.38, y = 5273.93, z = 79.61},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 50, g = 200, b = 50},
			Marker = 1,
			Blip = true,
			Name = _U('lj_board'),
			Type = 'work',
			Item = {
				{
					name = _U('lj_planks'),
					db_name = 'packaged_plank',
					time = 5,
					max = 100,
					add = 5,
					remove = 1,
					requires = 'cutted_wood',
					requires_name = _U('lj_cutwood'),
					drop = 100
				}
			},
			Hint = _U('lj_pick_boards')
		},

		VehicleSpawner = {
			Pos = {x = 1205.8, y = -1275.99, z = 35.23},
			Size = {x = 2.0, y = 2.0, z = 2.0},
			Color = {r = 50, g = 200, b = 50},
			Marker = 39,
			Blip = true,
			Name = _U('spawn_veh'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('spawn_veh_button'),
			Caution = 2000
		},

		VehicleSpawnPoint = {
			Pos = {x = 1194.62, y = -1286.95, z = 34.12},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 264.40
		},

		VehicleDeletePoint = {
			Pos = {x = 1216.89, y = -1229.23, z = 35.40},
			Size = {x = 2.0, y = 2.0, z = 2.0},
			Color = {r = 255, g = 0, b = 0},
			Marker = 39,
			Blip = true,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		},

		Delivery = {
			Pos = {x = 1201.35, y = -1327.51, z = 34.22},
			Color = {r = 50, g = 200, b = 50},
			Size = {x = 5.0, y = 5.0, z = 3.0},
			Marker = 1,
			Blip = true,
			Name = _U('delivery_point'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 0.5,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 30,
					requires = 'packaged_plank',
					requires_name = _U('lj_planks'),
					drop = 100
				}
			},
			Hint = _U('lj_deliver_button')
		}

	}
}
