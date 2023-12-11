Config = {}
Config.CheckForUpdates = true  -- check for update available?
Config.Locale = 'fr'  -- 'en' or 'id'
Config.UseTarget = false -- if you not use ox_target you can set false
Config.Notify = 'ESX' -- 'mythic_notify', 'lib', 'ESX'
Config.UseAnim = true -- play animation when requesting vehicle list?
Config.ShowVehImpoundInGarage = true
Config.SpawnVehicleInAnyGarage = false -- if true, the fee will be multiplied.
Config.FeeSpawnVehicleInAnyGarage = {[1] = 2, [2] = 3} -- [1] = garages fee * 2, [2] = impound fee * 3 and if you set 0 it's the same as free

Config.AutoTeleportToVehicle = false -- auto teleport to vehicle if vehicle spawning
Config.AutoLockVeh = true -- auto lock to vehicle if vehicle spawning
Config.PayIn = 'bank' -- Player can pay vehicle fee with 'money' or 'bank'
Config.LockKeyVehicle = 'U' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

Config.CmdVehDelete = 'asuransi' -- Admin command for delete vehicle in the words
Config.AutoDelVeh = true -- Automatically confiscate vehicles at a certain time, you can set the time in Config.DeleteVehiclesAt line 84 config.lua
Config.DeleteVehicleTimer = 180 -- in second
Config.DeleteVehiclesIfInSafeZone = true -- you can set safe zone in `Config.SafeZone` line 95 config.lua

Config.VehicleFee = { -- if set to 0 the player does not pay
  Garages = { -- Garage Fee
    [0] = 100, -- Compacts
    [1] = 100, -- Sedans
    [2] = 100, -- SUVs
    [3] = 100, -- Coupes
    [4] = 100, -- Muscle
    [5] = 100, -- Sports Classics
    [6] = 100, -- Sports
    [7] = 100, -- Super
    [8] = 100, -- Motorcycles
    [9] = 100, -- Off-road
    [10] = 100, -- Industrial
    [11] = 100, -- Utility
    [12] = 100, -- Vans
    [13] = 100, -- Cylces
    [14] = 100, -- Boats
    [15] = 100, -- Helicopters
    [16] = 100, -- Planes
    [17] = 100, -- Service
    [18] = 100, -- Emergency
    [19] = 100, -- Military
    [20] = 100, -- Commercial
    [21] = 100 -- Train 
  },
  Impound = { -- Impound Fee
    [0] = 2000, -- Compacts
    [1] = 2000, -- Sedans
    [2] = 3000, -- SUVs
    [3] = 2000, -- Coupes
    [4] = 2500, -- Muscle
    [5] = 3000, -- Sports Classics
    [6] = 3000, -- Sports
    [7] = 5000, -- Super
    [8] = 1000, -- Motorcycles
    [9] = 3000, -- Off-road
    [10] = 5000, -- Industrial
    [11] = 5000, -- Utility
    [12] = 5000, -- Vans
    [13] = 0, -- Cylces
    [14] = 5000, -- Boats
    [15] = 5000, -- Helicopters
    [16] = 5000, -- Planes
    [17] = 5000, -- Service
    [18] = 0, -- Emergency
    [19] = 10000, -- Military
    [20] = 5000, -- Commercial
    [21] = 10000 -- Train 
  }
}

Config.Peds = { -- Peds List
  'CSB_TrafficWarden', -- Garages
  's_m_y_construct_01' -- Impounds
}

Config.GroupAdminList= { -- Admin list to use Config.CmdVehDelete
  'dev',
  'moderator',
  'headadmin',
  'admin',
}

Config.DeleteVehiclesAt = { -- Automatic clock setting to delete or impound vehicles if there is no player inside.
	{['h'] = 00, ['m'] = 00},
	{['h'] = 03, ['m'] = 00},
	{['h'] = 06, ['m'] = 00},
	{['h'] = 09, ['m'] = 00},
	{['h'] = 12, ['m'] = 00},
	{['h'] = 15, ['m'] = 00},
	{['h'] = 18, ['m'] = 00},
	{['h'] = 21, ['m'] = 00},
}

Config.SafeZones = { -- If the vehicle is within the safe zone, it will not be deleted.
	{ ['x'] = -44.155646565, ['y'] = -1100.155646565, ['z'] = 26.267009735108, ['radius'] = 50.0},
	{ ['x'] = -1688.43811035156, ['y'] = -1073.62536621094, ['z'] = 13.1521873474121, ['radius'] = 200.0},
	{ ['x'] = -2195.1352539063, ['y'] = 4288.7290039063, ['z'] = 49.173923492432, ['radius'] = 150.0},
}

Config.Garages = { -- Garages Config
  Legion = { -- key garages to input databases
    Label = 'Legion', -- garage label
    Type = 'car', -- 'car', 'aircraft' and 'boat'
    Blip = true, -- if private garages you can set false
    NotFree = false, -- fee garages
    Coords = vector3(214.7889, -806.4965, 30.8092), -- blips and ped coords
    PedHeading = 341.4469, -- ped heading
    Players = { -- Players table allowed to access garages
      -- ex: {'steam:xxxxxxxxxxxx'}
    },
    Groups = { -- Groups table allowed to access garages
      -- ex: {'police'}
    },
    SpawnPoint = {
      { Pos = vector3(222.7534, -804.3437, 30.1486), Heading = 248.5339 },
      { Pos = vector3(223.8556, -801.9759, 30.1351), Heading = 248.5339 },
      { Pos = vector3(224.4868, -799.4138, 30.1383), Heading = 248.5339 },
      { Pos = vector3(225.3986, -796.8544, 30.1434), Heading = 248.5339 },
      { Pos = vector3(225.7808, -794.0939, 30.1681), Heading = 249.2099 },
      { Pos = vector3(226.4725, -791.5930, 30.1775), Heading = 248.3668 },
      { Pos = vector3(227.9673, -789.1436, 30.1805), Heading = 248.0247 },
    },
    DeletePoint = {
      { Pos = vector3(207.7707, -796.0760, 30.9834) },
      { Pos = vector3(209.2426, -793.8544, 30.9834) },
      { Pos = vector3(210.0643, -791.2812, 30.9834) },
      { Pos = vector3(210.9966, -788.7125, 30.4128) },
      { Pos = vector3(211.4733, -785.8821, 30.4111) },
      { Pos = vector3(212.6457, -783.4863, 30.3930) },
    }
  },

  Terminal = {
    Label = 'Terminal',
    Type = 'car',
    Blip = true,
    NotFree = false,
    Coords = vector3(1222.0289, -2961.0095, 5.8661), 
    PedHeading = 95.1120,
    Players = {
      
    },
    Groups = {
      
    },
    SpawnPoint = {
      { Pos = vector3(1217.5316, -2967.9685, 5.8661), Heading = 96.3912 },
    },
    DeletePoint = {
      { Pos = vector3(1217.5316, -2967.9685, 5.8661) }
    }
  },

  Festival = {
    Label = 'Festival',
    Type = 'car',
    Blip = true,
    NotFree = false,
    Coords = vector3(-1592.9933, -923.3627, 9.0223), 
    PedHeading = 53.7181,
    Players = {
      
    },
    Groups = {
      
    },
    SpawnPoint = {
      { Pos = vector3(-1598.6584, -923.6129, 8.4312), Heading = 139.0172 },
      { Pos = vector3(-1600.6407, -921.2331, 8.4414), Heading = 139.2408 },
      { Pos = vector3(-1603.2598, -919.4777, 8.4354), Heading = 140.2991 },
      { Pos = vector3(-1605.3907, -917.2253, 8.4415), Heading = 139.6384 },
      { Pos = vector3(-1607.4508, -914.8009, 8.4508), Heading = 140.9010 },
    },
    DeletePoint = {
      { Pos = vector3(-1594.1393, -918.3148, 8.4508) },
      { Pos = vector3(-1596.5669, -916.2999, 8.4508) },
      { Pos = vector3(-1598.9159, -914.2520, 8.4508) },
      { Pos = vector3(-1601.1835, -912.2111, 8.4508) },
      { Pos = vector3(-1603.5889, -910.2061, 8.4508) },
    }
  },

  Paleto = {
    Label = 'Paleto',
    Type = 'car',
    Blip = true,
    NotFree = false,
    Coords = vector3(79.6358, 6404.2163, 31.4458), 
    PedHeading = 131.1130,
    Players = {
      
    },
    Groups = {
      
    },
    SpawnPoint = {
      { Pos = vector3(61.8341, 6404.0713, 30.7141), Heading = 215.2714 },
      { Pos = vector3(59.0627, 6400.9746, 30.7144), Heading = 214.8043 },
      { Pos = vector3(64.7686, 6406.2705, 30.7141), Heading = 211.2245 }
    },
    DeletePoint = {
      { Pos = vector3(72.4021, 6404.3438, 30.7144) },
      { Pos = vector3(75.4666, 6401.4907, 30.7144) },
      { Pos = vector3(78.1349, 6398.5815, 30.7144) },
      { Pos = vector3(81.0012, 6395.9927, 30.7144) }
    }
  },

  SandyShoresG = {
    Label = 'Sandy Shores Garage',
    Type = 'car',
    Blip = true,
    NotFree = false,
    Coords = vector3(1894.9961, 3714.3591, 32.7538), 
    PedHeading = 118.3539,
    Players = {
      
    },
    Groups = {
      
    },
    SpawnPoint = {
      { Pos = vector3(1888.0814, 3716.1348, 32.3407), Heading = 121.8960 },
      { Pos = vector3(1885.9080, 3719.4238, 32.3447), Heading = 119.4130 },
      { Pos = vector3(1884.1178, 3722.4272, 32.3363), Heading = 118.8460 }
    },
    DeletePoint = {
      { Pos = vector3(1888.0814, 3716.1348, 32.3447)},
      { Pos = vector3(1885.9080, 3719.4238, 32.3447)},
      { Pos = vector3(1884.1178, 3722.4272, 32.3447)}
    }
  },
  
  EclipseHospital = {
    Label = 'Eclipse Hospital',
    Type = 'car',
    Blip = true,
    NotFree = false,
    Coords = vector3(-656.2633, 351.4507, 78.1183), 
    PedHeading = 183.5614,
    Players = {
      
    },
    Groups = {
      
    },
    SpawnPoint = {
      { Pos = vector3(-658.0089, 348.9457, 77.6068), Heading = 175.7422 },
      { Pos = vector3(-658.0089, 348.9457, 77.6068), Heading = 175.7422 },
      { Pos = vector3(-661.4048, 349.1467, 77.6067), Heading = 175.7422 },
      { Pos = vector3(-664.7354, 349.3837, 77.6068), Heading = 175.7422 },
      { Pos = vector3(-668.1645, 349.8712, 77.6069), Heading = 175.7422 },
      { Pos = vector3(-671.7061, 350.3329, 77.6067), Heading = 175.7422 },
    },
    DeletePoint = {
      { Pos = vector3(-658.0089, 348.9457, 77.6067) },
      { Pos = vector3(-661.4048, 349.1467, 77.6067) },
      { Pos = vector3(-664.7354, 349.3837, 77.6067) },
      { Pos = vector3(-668.1645, 349.8712, 77.6067) },
      { Pos = vector3(-671.7061, 350.3329, 77.6067) },
    }
  },

  PoliceGarage = {
    Label = 'Police Garage',
    Type = 'car',
    Blip = false,
    NotFree = false,
    Coords = vector3(459.1317, -1010.4518, 28.1798),
    PedHeading = 82.2547,
    Players = {
      
    },
    Groups = {
      {'police'}
    },
    SpawnPoint = {
      { Pos = vector3(446.0918, -1024.0363, 28.5160), Heading = 4.0892 },
      { Pos = vector3(442.3278, -1025.4196, 28.6097), Heading = 6.3928 },
      { Pos = vector3(438.3373, -1025.7689, 28.6909), Heading = 7.4139 },
      { Pos = vector3(434.7534, -1026.3446, 28.7670), Heading = 6.0667 },
      { Pos = vector3(430.9147, -1026.6952, 28.8344), Heading = 5.9158 },
      { Pos = vector3(427.2970, -1027.0142, 28.9019), Heading = 6.3342 },
    },
    DeletePoint = {
      { Pos = vector3(446.0918, -1024.0363, 28.5160) },
      { Pos = vector3(442.3278, -1025.4196, 28.6097) },
      { Pos = vector3(438.3373, -1025.7689, 28.6909) },
      { Pos = vector3(434.7534, -1026.3446, 28.7670) },
      { Pos = vector3(430.9147, -1026.6952, 28.8344) },
      { Pos = vector3(427.2970, -1027.0142, 28.9019) },
    }
  },

  BallasGarage = {
    Label = 'Ballas',
    Type = 'car',
    Blip = false,
    NotFree = false,
    Coords = vector3(118.4249, -1951.0374, 20.7460), 
    PedHeading = 204.2781,
    Players = {
      
    },
    Groups = {
      {'ballas'}
    },
    SpawnPoint = {
      { Pos = vector3(114.2576, -1948.3456, 20.8791), Heading = 50.1370 },
    },
    DeletePoint = {
      { Pos = vector3(116.1820, -1939.3575, 20.8602) }
    }
  },

  FamiliesGarage = {
    Label = 'Families',
    Type = 'car',
    Blip = false,
    NotFree = false,
    Coords = vector3(-109.1682, -1591.2456, 31.8967), 
    PedHeading = 71.3173,
    Players = {
      
    },
    Groups = {
      {'families'}
    },
    SpawnPoint = {
      { Pos = vector3(-103.6861, -1590.1494, 31.8187), Heading = 318.3862 },
    },
    DeletePoint = {
      { Pos = vector3(-113.9441, -1602.0331, 32.2595) }
    }
  },

  MarabuntaGarage = {
    Label = 'Marabunta',
    Type = 'car',
    Blip = false,
    NotFree = false,
    Coords = vector3(1422.6965, -1502.8439, 60.8562), 
    PedHeading = 340.3763,
    Players = {
      
    },
    Groups = {
      {'marabunta'}
    },
    SpawnPoint = {
      { Pos = vector3(1421.8987, -1506.7832, 61.0020), Heading = 166.9918 },
    },
    DeletePoint = {
      { Pos = vector3(1415.1127, -1506.5317, 60.1591) }
    }
  },  

  VagosGarage = {
    Label = 'Vagos',
    Type = 'car',
    Blip = false,
    NotFree = false,
    Coords = vector3(330.8190, -2028.7334, 21.2129), 
    PedHeading = 299.6026,
    Players = {
      
    },
    Groups = {
      {'vagos'}
    },
    SpawnPoint = {
      { Pos = vector3(327.2263, -2034.5193, 21.1196), Heading = 46.3617 },
    },
    DeletePoint = {
      { Pos = vector3(324.7478, -2038.8507, 20.9293) }
    }
  },  
  
  BandidosGarage = {
    Label = 'Bandidos',
    Type = 'car',
    Blip = false,
    NotFree = false,
    Coords = vector3(2517.8269, 4122.1475, 38.6307), 
    PedHeading = 240.7024,
    Players = {
      
    },
    Groups = {
      {'bandidos'}
    },
    SpawnPoint = {
      { Pos = vector3(2510.7878, 4112.3916, 38.6804), Heading = 25.7162 },
    },
    DeletePoint = {
      { Pos = vector3(2521.1780, 4131.0161, 38.7648) }
    }
  },  
  
  SOAGarage = {
    Label = 'Sons of Anarchy',
    Type = 'car',
    Blip = false,
    NotFree = false,
    Coords = vector3(-59.8643, 6389.3481, 31.4902), 
    PedHeading = 200.1701,
    Players = {
      
    },
    Groups = {
      {'soa'}
    },
    SpawnPoint = {
      { Pos = vector3(-64.2204, 6395.0151, 31.6973), Heading = 316.0592 },
    },
    DeletePoint = {
      { Pos = vector3(-55.3088, 6395.1416, 31.6971) }
    }
  }, 

  AOCGarage = {
    Label = 'Angel of Death',
    Type = 'car',
    Blip = false,
    NotFree = false,
    Coords = vector3(904.1266, 3577.3125, 33.4278), 
    PedHeading = 188.2781,
    Players = {
      
    },
    Groups = {
      {'aoc'}
    },
    SpawnPoint = {
      { Pos = vector3(904.7516, 3589.4905, 33.4476), Heading = 268.6135 },
    },
    DeletePoint = {
      { Pos = vector3(892.7681, 3589.5750, 33.4218) }
    }
  }, 

  LSAirPort = {
    Label = 'Aéroport Los Santos',
    Type = 'aircraft',
    Blip = true,
    NotFree = true,
    Coords = vector3(-1122.4502, -2840.5667, 13.9458), 
    PedHeading = 152.0285,
    Players = {
      
    },
    Groups = {
      
    },
    SpawnPoint = {
      { Pos = vector3(-1178.2308, -2845.7175, 13.9458), Heading = 146.1286 },
      { Pos = vector3(-1145.8920, -2864.2798, 13.9460), Heading = 153.7971 },
      { Pos = vector3(-1112.4072, -2883.8889, 13.9460), Heading = 152.9144 },
    },
    DeletePoint = {
      { Pos = vector3(-1178.2308, -2845.7175, 13.9458) },
      { Pos = vector3(-1145.8920, -2864.2798, 13.9460) },
      { Pos = vector3(-1112.4072, -2883.8889, 13.9460) },
    }
  },
  
  MBAirport = {
    Label = 'Aéroport Zancudo',
    Type = 'aircraft',
    Blip = true,
    NotFree = true,
    Coords = vector3(-2211.6267, 3167.5488, 32.8101), 
    PedHeading = 330.5554,
    Players = {
  
    },
    Groups = {
      
    },
    SpawnPoint = {
      { Pos = vector3(-2186.9236, 3172.0801, 32.8102), Heading = 326.1197 },
    },
    DeletePoint = {
      { Pos = vector3(-2186.9236, 3172.0801, 32.8102)},
    }
  },
  
  PacificOcean = {
    Label = 'Hangar Pacific Ocean',
    Type = 'boat',
    Blip = true,
    NotFree = true,
    Coords = vector3(-1799.7592, -1225.0562, 1.5826), 
    PedHeading = 144.0511,
    Players = {
  
    },
    Groups = {
      
    },
    SpawnPoint = {
      { Pos = vector3(-1796.9568, -1229.5969, 0.2092), Heading = 145.8580 },
    },
    DeletePoint = {
      { Pos = vector3(-1796.9568, -1229.5969, 0.2092)},
    }
  },

}

Config.Impound = { -- Impound Config
	SandyShores = {
		Label = 'Fourrière Sandy Shores',
    Type = 'car',
    IsDefaultImpound = false,
		Blip = true,
    NotFree = true,
		Coords = vector3(252.6010, 2595.8438, 44.8995),
		PedHeading = 11.6176,
		SpawnPoint = {
			{ Pos = vector3(258.5054, 2590.7029, 44.4424), Heading = 10.3867, }
		},
	},

	SandyShoresAir = {
		Label = 'Fourrière Aérienne Sandy Shores',
    Type = 'aircraft',
    IsDefaultImpound = true,
		Blip = true,
    NotFree = true,
		Coords = vector3(1727.7544, 3293.1646, 41.1973),
		PedHeading = 193.5272,
		SpawnPoint = {
			{ Pos = vector3(1749.2124, 3264.2148, 41.2852), Heading = 102.5581, }
		},
	},

	SandyShoresBoat = {
		Label = 'Fourrière à bateaux Sandy Shores',
    Type = 'boat',
    IsDefaultImpound = true,
		Blip = true,
    NotFree = true,
		Coords = vector3(1733.4327, 3985.1807, 31.9787),
		PedHeading = 121.1930,
		SpawnPoint = {
			{ Pos = vector3(1730.9972, 3990.8796, 29.7878), Heading = 304.6193, }
		},
	},

	JobsImpound = { -- if for jobs keywords should start with the word Jobs
		Label = 'Fourrière LSPD',
    Type = 'car',
    IsDefaultImpound = true,
		Blip = true,
    NotFree = false,
		Coords = vector3(409.5207, -1623.1407, 29.2919),
		PedHeading = 226.8043,
		SpawnPoint = {
			{ Pos = vector3(416.9999, -1627.8965, 29.0), Heading = 137.3000, },
			{ Pos = vector3(419.6365, -1629.6110, 29.0), Heading = 135.3693, },
			{ Pos = vector3(420.4732, -1635.9071, 29.0), Heading = 88.7233, },
			{ Pos = vector3(420.4871, -1638.9510, 29.0), Heading = 86.0705, },
			{ Pos = vector3(420.5472, -1641.9459, 29.0), Heading = 87.1742, },
		},
	},
}

Config.Blips = {
  Garages = {
    aircraft = {
      Sprite = 359,
      Colour = 3,
      Display = 2,
      Scale = 0.8
    },
    car = {
      Sprite = 357,
      Colour = 3,
      Display = 2,
      Scale = 0.8
    },
    boat = {
      Sprite = 356,
      Colour = 3,
      Display = 2,
      Scale =  0.8
    }
  },
  Impounds = {
    aircraft = {
      Sprite = 359,
      Colour = 51,
      Display = 2,
      Scale = 0.8
    },
    car = {
      Sprite = 477,
      Colour = 51,
      Display = 2,
      Scale = 0.7
    },
    boat = {
      Sprite = 356,
      Colour = 51,
      Display = 2,
      Scale =  0.8
    }
  }
}