Config = {}

Config.Debug = false

Config.ClothingCost = 250
Config.BarberCost = 250
Config.TattooCost = 500
Config.SurgeonCost = 1000000

Config.ChargePerTattoo = true -- Charge players per tattoo. Config.TattooCost will become the cost of 1 tattoo. The cost can be overridden by adding `cost` key in shared/tattoos.lua for specific tattoos

-- Only set this to true if you're using rcore_tattoos
Config.RCoreTattoosCompatibility = false

Config.AsynchronousLoading = false -- Change this to false if you want the NUI data to load before displaying the appearance UI

Config.UseTarget = false

Config.TextUIOptions = {
    position = "left-center"
}

Config.NotifyOptions = {
    position = "top-center"
}

Config.OutfitCodeLength = 10

Config.UseRadialMenu = false
Config.UseOxRadial = false -- Set to true to use ox_lib radial menu, both this and UseRadialMenu must be true 

Config.EnablePedsForShops = false
Config.EnablePedsForClothingRooms = false
Config.EnablePedsForPlayerOutfitRooms = false

Config.EnablePedMenu = true
Config.PedMenuGroup = "group.admin"

Config.ShowNearestShopOnly = false
Config.HideRadar = false -- Hides the minimap while the appearance menu is open
Config.NearestShopBlipUpdateDelay = 10000

Config.InvincibleDuringCustomization = true

Config.PreventTrackerRemoval = true -- Disables "Scarf and Chains" section if the player has tracker

Config.NewCharacterSections = {
    Ped = true,
    HeadBlend = true,
    FaceFeatures = true,
    HeadOverlays = true,
    Components = true,
    Props = true,
    Tattoos = false
}

Config.GenderBasedOnPed = true

Config.AlwaysKeepProps = false

Config.PersistUniforms = true -- Keeps Job / Gang Outfits on player reconnects / logout
Config.OnDutyOnlyClothingRooms = false -- Set to `true` to make the clothing rooms accessible only to players who are On Duty

Config.BossManagedOutfits = false -- Allows Job / Gang bosses to manage their own job / gang outfits

Config.ReloadSkinCooldown = 5000

Config.AutomaticFade = false -- Enables automatic fading and hides the Fade section from Hair

-- ACE Permissions Config
Config.EnableACEPermissions = false
Config.ACEResetCooldown = 5000
Config.ACEListCooldown = 60 * 60 * 1000 -- 1 Hour

Config.DisableComponents = {
    Masks = false,
    UpperBody = false,
    LowerBody = false,
    Bags = false,
    Shoes = false,
    ScarfAndChains = false,
    BodyArmor = false,
    Shirts = false,
    Decals = false,
    Jackets = false
}

Config.DisableProps = {
    Hats = false,
    Glasses = false,
    Ear = false,
    Watches = false,
    Bracelets = false
}

Config.Blips = {
    ["clothing"] = {
        Show = true,
        Sprite = 366,
        Color = 47,
        Scale = 0.7,
        Name = "Magasin de vêtements",
    },
    ["barber"] = {
        Show = true,
        Sprite = 71,
        Color = 0,
        Scale = 0.7,
        Name = "Coiffeur",
    },
    ["tattoo"] = {
        Show = true,
        Sprite = 75,
        Color = 4,
        Scale = 0.7,
        Name = "Magasin de tatouage",
    },
    ["surgeon"] = {
        Show = true,
        Sprite = 102,
        Color = 4,
        Scale = 0.7,
        Name = "Chirurgien esthétique",
    }
}

Config.TargetConfig = {
    ["clothing"] = {
        model = "s_f_m_shop_high",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-tshirt",
        label = "Ouvrir le Magasin de vêtements",
        distance = 3
    },
    ["barber"] = {
        model = "s_m_m_hairdress_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-scissors",
        label = "Ouvrir le Coiffeur",
        distance = 3
    },
    ["tattoo"] = {
        model = "u_m_y_tattoo_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-pen",
        label = "Ouvrir le Magasin de tatouage",
        distance = 3
    },
    ["surgeon"] = {
        model = "s_m_m_doctor_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-scalpel",
        label = "Chirurgien esthétique",
        distance = 3
    },
    ["clothingroom"] = {
        model = "mp_g_m_pros_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-sign-in-alt",
        label = "Ouvrir le vestiaire",
        distance = 3
    },
    ["playeroutfitroom"] = {
        model = "mp_g_m_pros_01",
        scenario = "WORLD_HUMAN_STAND_MOBILE",
        icon = "fas fa-sign-in-alt",
        label = "Ouvrir les tenues",
        distance = 3
    },
}

Config.Stores = {
    {
        type = "clothing",
        coords = vector4(1693.2, 4828.11, 42.07, 188.66),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false, -- false => uses the size + rotation to create the zone | true => uses points to create the zone
        showBlip = true, -- overrides the blip visibilty configured above for the group
        --targetModel = "s_m_m_doctor_01", -- overrides the target ped configured for the group
        --targetScenario = "" -- overrides the target scenario configure for the group
        points = {
            vector3(1686.9018554688, 4829.8330078125, 42.07),
            vector3(1698.8566894531, 4831.4604492188, 42.07),
            vector3(1700.2448730469, 4817.7734375, 42.07),
            vector3(1688.3682861328, 4816.2954101562, 42.07)
        }
    },
    {
        type = "clothing",
        coords = vector4(-705.5, -149.22, 37.42, 122),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-719.86212158203, -147.83151245117, 37.42),
            vector3(-709.10491943359, -141.53076171875, 37.42),
            vector3(-699.94342041016, -157.44494628906, 37.42),
            vector3(-710.68774414062, -163.64665222168, 37.42)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1192.61, -768.4, 17.32, 216.6),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1206.9552001953, -775.06304931641, 17.32),
            vector3(-1190.6080322266, -764.03198242188, 17.32),
            vector3(-1184.5672607422, -772.16949462891, 17.32),
            vector3(-1199.24609375, -783.07928466797, 17.32)
        }
    },
    {
        type = "clothing",
        coords = vector4(425.91, -801.03, 29.49, 177.79),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(419.55020141602, -798.36547851562, 29.49),
            vector3(431.61773681641, -798.31909179688, 29.49),
            vector3(431.19784545898, -812.07122802734, 29.49),
            vector3(419.140625, -812.03594970703, 29.49)
        }
    },
    {
        type = "clothing",
        coords = vector4(-168.73, -301.41, 39.73, 238.67),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-160.82145690918, -313.85919189453, 39.73),
            vector3(-172.56513977051, -309.82858276367, 39.73),
            vector3(-166.5775604248, -292.48077392578, 39.73),
            vector3(-154.84906005859, -296.51647949219, 39.73)
        }
    },
    {
        type = "clothing",
        coords = vector4(75.39, -1398.28, 29.38, 6.73),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(81.406135559082, -1400.7791748047, 29.38),
            vector3(69.335029602051, -1400.8251953125, 29.38),
            vector3(69.754981994629, -1387.078125, 29.38),
            vector3(81.500122070312, -1387.3002929688, 29.38)
        }
    },
    {
        type = "clothing",
        coords = vector4(-827.39, -1075.93, 11.33, 294.31),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-826.26251220703, -1082.6293945312, 11.33),
            vector3(-832.27856445312, -1072.2819824219, 11.33),
            vector3(-820.16442871094, -1065.7727050781, 11.33),
            vector3(-814.08953857422, -1076.1878662109, 11.33)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1445.86, -240.78, 49.82, 36.17),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1448.4829101562, -226.39401245117, 49.82),
            vector3(-1439.2475585938, -234.70428466797, 49.82),
            vector3(-1451.5389404297, -248.33193969727, 49.82),
            vector3(-1460.7554931641, -240.02815246582, 49.82)
        }
    },
    {
        type = "clothing",
        coords = vector4(9.22, 6515.74, 31.88, 131.27),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(6.4955291748047, 6522.205078125, 31.88),
            vector3(14.737417221069, 6513.3872070312, 31.88),
            vector3(4.3691010475159, 6504.3452148438, 31.88),
            vector3(-3.5187695026398, 6513.1538085938, 31.88)
        }
    },
    {
        type = "clothing",
        coords = vector4(615.35, 2762.72, 42.09, 170.51),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(612.58312988281, 2747.2814941406, 42.09),
            vector3(612.26214599609, 2767.0520019531, 42.09),
            vector3(622.37548828125, 2767.7614746094, 42.09),
            vector3(623.66833496094, 2749.5180664062, 42.09)
        }
    },
    {
        type = "clothing",
        coords = vector4(1191.61, 2710.91, 38.22, 269.96),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1188.7923583984, 2704.2021484375, 38.22),
            vector3(1188.7498779297, 2716.2661132812, 38.22),
            vector3(1202.4979248047, 2715.8479003906, 38.22),
            vector3(1202.3558349609, 2703.9294433594, 38.22)
        }
    },
    {
        type = "clothing",
        coords = vector4(-3171.32, 1043.56, 20.86, 334.3),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-3162.0075683594, 1056.7303466797, 20.86),
            vector3(-3170.8247070312, 1039.0412597656, 20.86),
            vector3(-3180.0979003906, 1043.1201171875, 20.86),
            vector3(-3172.7292480469, 1059.8623046875, 20.86)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1105.52, 2707.79, 19.11, 317.19),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1103.3004150391, 2700.8195800781, 19.11),
            vector3(-1111.3771972656, 2709.884765625, 19.11),
            vector3(-1100.8548583984, 2718.638671875, 19.11),
            vector3(-1093.1976318359, 2709.7365722656, 19.11)
        }
    },
    {
        type = "clothing",
        coords = vector4(-1119.24, -1440.6, 5.23, 300.5),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1124.5535888672, -1444.5367431641, 5.23),
            vector3(-1118.7023925781, -1441.0450439453, 5.23),
            vector3(-1121.2891845703, -1434.8474121094, 5.23),
            vector3(-1128.4727783203, -1439.8254394531, 5.23)
        }
    },
    {
        type = "clothing",
        coords = vector4(124.82, -224.36, 54.56, 335.41),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(133.60948181152, -210.31390380859, 54.56),
            vector3(125.8349609375, -228.48097229004, 54.56),
            vector3(116.3140335083, -225.02020263672, 54.56),
            vector3(122.56930541992, -207.83396911621, 54.56)
        }
    },
    {
        type = "barber",
        coords = vector4(-814.22, -183.7, 37.57, 116.91),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-825.06127929688, -182.67497253418, 37.57),
            vector3(-808.82415771484, -179.19134521484, 37.57),
            vector3(-808.55261230469, -184.9720916748, 37.57),
            vector3(-819.77899169922, -191.81831359863, 37.57)
        }
    },
    {
        type = "barber",
        coords = vector4(136.78, -1708.4, 29.29, 144.19),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(132.57008361816, -1710.5053710938, 29.29),
            vector3(138.77899169922, -1702.6778564453, 29.29),
            vector3(142.73052978516, -1705.6853027344, 29.29),
            vector3(135.49719238281, -1712.9750976562, 29.29)
        }
    },
    {
        type = "barber",
        coords = vector4(-1282.57, -1116.84, 6.99, 89.25),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1287.4735107422, -1115.4364013672, 6.99),
            vector3(-1277.5638427734, -1115.1229248047, 6.99),
            vector3(-1277.2469482422, -1120.1147460938, 6.99),
            vector3(-1287.4561767578, -1119.2506103516, 6.99)
        }
    },
    {
        type = "barber",
        coords = vector4(1931.41, 3729.73, 32.84, 212.08),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1932.4931640625, 3725.3374023438, 32.84),
            vector3(1927.2720947266, 3733.7663574219, 32.84),
            vector3(1931.4379882812, 3736.5327148438, 32.84),
            vector3(1936.0697021484, 3727.2839355469, 32.84)
        }
    },
    {
        type = "barber",
        coords = vector4(1212.8, -472.9, 65.2, 60.94),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1208.3327636719, -469.84338378906, 65.2),
            vector3(1217.9066162109, -472.40216064453, 65.2),
            vector3(1216.9870605469, -477.00939941406, 65.2),
            vector3(1206.1077880859, -473.83499145508, 65.2)
        }
    },
    {
        type = "barber",
        coords = vector4(-32.9, -152.3, 56.1, 335.22),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-29.730783462524, -148.67495727539, 56.1),
            vector3(-32.919719696045, -158.04254150391, 56.1),
            vector3(-37.612594604492, -156.62759399414, 56.1),
            vector3(-33.30192565918, -147.31649780273, 56.1)
        }
    },
    {
        type = "barber",
        coords = vector4(-278.1, 6228.5, 30.7, 49.32),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-280.29818725586, 6232.7265625, 30.7),
            vector3(-273.06427001953, 6225.9692382812, 30.7),
            vector3(-276.25280761719, 6222.4013671875, 30.7),
            vector3(-282.98211669922, 6230.015625, 30.7)
        }
    },
    {
        type = "tattoo",
        coords = vector4(1322.6, -1651.9, 51.2, 42.47),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1323.9360351562, -1649.2370605469, 51.2),
            vector3(1328.0186767578, -1654.3087158203, 51.2),
            vector3(1322.5780029297, -1657.7045898438, 51.2),
            vector3(1319.2043457031, -1653.0885009766, 51.2)
        }
    },
    {
        type = "tattoo",
        coords = vector4(-1154.01, -1425.31, 4.95, 23.21),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-1152.7110595703, -1422.8382568359, 4.95),
            vector3(-1149.0043945312, -1428.1975097656, 4.95),
            vector3(-1154.6730957031, -1431.1898193359, 4.95),
            vector3(-1157.7064208984, -1426.3433837891, 4.95)
        }
    },
    {
        type = "tattoo",
        coords = vector4(322.62, 180.34, 103.59, 156.2),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(319.28741455078, 179.9383392334, 103.59),
            vector3(321.537109375, 186.04516601562, 103.59),
            vector3(327.24526977539, 183.12303161621, 103.59),
            vector3(325.01351928711, 177.8542175293, 103.59)
        }
    },
    {
        type = "tattoo",
        coords = vector4(-3169.52, 1074.86, 20.83, 253.29),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-3169.5861816406, 1072.3740234375, 20.83),
            vector3(-3175.4802246094, 1075.0703125, 20.83),
            vector3(-3172.2041015625, 1080.5860595703, 20.83),
            vector3(-3167.076171875, 1078.0391845703, 20.83)
        }
    },
    {
        type = "tattoo",
        coords = vector4(1864.1, 3747.91, 33.03, 17.23),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(1860.2752685547, 3750.1608886719, 33.03),
            vector3(1866.390625, 3752.8081054688, 33.03),
            vector3(1868.6164550781, 3747.3562011719, 33.03),
            vector3(1863.65234375, 3744.5034179688, 33.03)
        }
    },
    {
        type = "tattoo",
        coords = vector4(-294.24, 6200.12, 31.49, 195.72),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(-289.42239379883, 6198.68359375, 31.49),
            vector3(-294.69515991211, 6194.5366210938, 31.49),
            vector3(-298.23013305664, 6199.2451171875, 31.49),
            vector3(-294.1501159668, 6203.2700195312, 31.49)
        }
    },
    {
        type = "surgeon",
        coords = vector4(298.78, -572.81, 43.26, 114.27),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(298.84417724609, -572.92205810547, 43.26),
            vector3(296.39556884766, -575.65942382812, 43.26),
            vector3(293.56317138672, -572.60675048828, 43.26),
            vector3(296.28656005859, -570.330078125, 43.26)
        }
    }
}


--[[Config.ClothingRooms = {
    {
        job = "police",
        coords = vector4(454.91, -990.89, 30.69, 193.4),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {}
    },
    {
        job = "ambulance",
        coords = vector4(-678.7512, 336.8665, 83.0799, 276.04),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {}
    },
}
]]--

Config.ClothingRooms = {
    --Factions Job
    { job = "tunershop", coords = vector4(152.32, -3014.51, 7.04, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "bennys", coords = vector4(-213.42, -1332.21, 23.14, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "hayes", coords = vector4(-1425.18, -457.37, 35.91, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "lscustoms", coords = vector4(1187.73, 2635.87, 38.4, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "mclost", coords = vector4(39.01, 6463.03, 32.08, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "casino", coords = vector4(954.94, 1.46, 71.84, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "taxi", coords = vector4(893.64, -162.47, 76.89, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "autocare", coords = vector4(-324.95, -141.35, 39.01, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "bahamas", coords = vector4(-1367.22, -612.54, 30.32, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "pdm", coords = vector4(-31.76, -1108.47, 26.42, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "luxury", coords = vector4(-787.75, -215.4, 37.08, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "unicorn", coords = vector4(130.03, -1277.64, 29.26, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "unicorn", coords = vector4(109.36, -1305.79, 29.26, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "splitsides", coords = vector4(-454.3, 283.1, 83.06, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "studio", coords = vector4(726.51, 2525.48, 73.53, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "police", coords = vector4(-437.72, 5988.30, 31.71, 38.64), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "police", coords = vector4(2516.2, -347.2, 101.89, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "police", coords = vector4(471.67321777344, -987.2158203125, 24.734666824341, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "ambulance", coords = vector4(1834.74, 3690.2, 34.27, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "ambulance", coords = vector4(310.14, -602.52, 43.29, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "ambulance", coords = vector4(-256.48, 6326.6, 32.43, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "ambulance", coords = vector4(-678.76, 336.86, 83.08, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "ambulance", coords = vector4(-667.29, 323.8, 92.74, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}},
    { job = "taxi", coords = vector4(892.99, -146.4, 76.89, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}}
}

Config.PlayerOutfitRooms = {
    -- Factions gangs
    { job = "ballas", coords = vector4(118.55, -1963.58, 21.33, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "families", coords = vector4(-155.62, -1604.38, 35.04, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "marabunta", coords = vector4(1445.37, -1488.31, 66.62, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "vagos", coords = vector4(341.71, -2021.66, 25.59, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "soa", coords = vector4(-51.59, 6380.79, 31.6, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "oneill", coords = vector4(2431.81, 4962.92, 46.81, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "cayocartel", coords = vector4(5026.51, -5738.57, 17.87, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "cartel", coords = vector4(1403.7, 1144.54, 114.33, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "patria", coords = vector4(4518.42, -4547.85, 4.13, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "yakuza", coords = vector4(-867.31, -1458.24, 7.53, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "bratva", coords = vector4(-3219.83, 784.74, 14.08, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "triades", coords = vector4(-2676.48, 1325.82, 152.01, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "duggan", coords = vector4(3315.4997558594, 5184.9428710938, 22.52300453186, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    { job = "bandidos", coords = vector4(2516.7310, 4104.5405, 35.5852, 254.45), size = vector3(4, 4, 4), rotation = 45, usePoly = false, points = {}, citizenIDs = {}},
    -- Sample outfit room config
--[[    {
        job = "police",
        coords = vector4(287.28, -573.41, 43.16, 79.61),
        size = vector3(4, 4, 4),
        rotation = 45,
        usePoly = false,
        points = {
            vector3(284.83, -574.01, 43.16),
            vector3(286.33, -570.03, 43.16),
            vector3(290.33, -571.74, 43.16),
            vector3(289.0, -574.75, 43.16)
        },
        citizenIDs = {
            "BHH65156"
        }
    }]]--
}

Config.Outfits = {
    ['ambulance'] = {
        ['Male'] = {
            [1] = {
                name = 'Ambulancier Manches Longues',
                outfitData = {
                    ['arms'] = { item = 77, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 15, texture = 0 }, -- T-Shirt
                    ['torso2'] = { item = 257, texture = 0 }, -- Jackets
                    ['vest'] = { item = 249, texture = 0 }, -- Vest
                    ['decals'] = { item = 57, texture = 0 }, -- Decals
                    ['accessory'] = { item = 126, texture = 0 }, -- Neck
                    ['bag'] = { item = 21, texture = 10 }, -- Bag
                    ['pants'] = { item = 96, texture = 0 }, -- Pants
                    ['shoes'] = { item = 59, texture = 22 }, -- Shoes
                    ['mask'] = { item = 0, texture = 0 }, -- Mask
                    ['hat'] = { item = 122, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['ear'] = { item = 0, texture = 0 } -- Ear accessories
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [2] = {
                name = 'Ambulancier Manches Courtes',
                outfitData = {
                    ['arms'] = { item = 74, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 15, texture = 0 }, -- T-Shirt
                    ['torso2'] = { item = 250, texture = 0 }, -- Jackets
                    ['vest'] = { item = 0, texture = 0 }, -- Vest
                    ['decals'] = { item = 58, texture = 1 }, -- Decals
                    ['accessory'] = { item = 126, texture = 0 }, -- Neck
                    ['bag'] = { item = 21, texture = 10 }, -- Bag
                    ['pants'] = { item = 96, texture = 0 }, -- Pants
                    ['shoes'] = { item = 59, texture = 22 }, -- Shoes
                    ['mask'] = { item = 0, texture = 0 }, -- Mask
                    ['hat'] = { item = 122, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['ear'] = { item = 0, texture = 0 } -- Ear accessories
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [3] = {
                name = 'Infirmier',
                outfitData = {
                    ['arms'] = { item = 74, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 15, texture = 0 }, -- T-Shirt
                    ['torso2'] = { item = 250, texture = 0 }, -- Jackets
                    ['vest'] = { item = 0, texture = 0 }, -- Vest
                    ['decals'] = { item = 58, texture = 0 }, -- Decals
                    ['accessory'] = { item = 126, texture = 0 }, -- Neck
                    ['bag'] = { item = 21, texture = 10 }, -- Bag
                    ['pants'] = { item = 96, texture = 1 }, -- Pants
                    ['shoes'] = { item = 59, texture = 22 }, -- Shoes
                    ['mask'] = { item = 0, texture = 0 }, -- Mask
                    ['hat'] = { item = 122, texture = 1 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['ear'] = { item = 0, texture = 0 } -- Ear accessories
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [4] = {
                name = 'Médecin Généraliste Manches Longues',
                outfitData = {
                    ['arms'] = { item = 75, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 15, texture = 0 }, -- T-Shirt
                    ['torso2'] = { item = 75, texture = 6 }, -- Jackets
                    ['vest'] = { item = 0, texture = 0 }, -- Vest
                    ['decals'] = { item = 0, texture = 0 }, -- Decals
                    ['accessory'] = { item = 126, texture = 0 }, -- Neck
                    ['bag'] = { item = 21, texture = 10 }, -- Bag
                    ['pants'] = { item = 35, texture = 0 }, -- Pants
                    ['shoes'] = { item = 59, texture = 22 }, -- Shoes
                    ['mask'] = { item = 0, texture = 0 }, -- Mask
                    ['hat'] = { item = -1, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['ear'] = { item = 0, texture = 0 } -- Ear accessories
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [5] = {
                name = 'Médecin Généraliste Manches Courtes',
                outfitData = {
                    ['arms'] = { item = 74, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 15, texture = 0 }, -- T-Shirt
                    ['torso2'] = { item = 74, texture = 6 }, -- Jackets
                    ['vest'] = { item = 0, texture = 0 }, -- Vest
                    ['decals'] = { item = 0, texture = 0 }, -- Decals
                    ['accessory'] = { item = 126, texture = 0 }, -- Neck
                    ['bag'] = { item = 21, texture = 10 }, -- Bag
                    ['pants'] = { item = 35, texture = 0 }, -- Pants
                    ['shoes'] = { item = 59, texture = 22 }, -- Shoes
                    ['mask'] = { item = 0, texture = 0 }, -- Mask
                    ['hat'] = { item = -1, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['ear'] = { item = 0, texture = 0 } -- Ear accessories
                },
                grades = { 0, 1, 2, 3, 4 },
            },
        },
        ['Female'] = {
            [1] = {
                name = 'Ambulancière Manches Longues',
                outfitData = {
                    ['arms'] = { item = 92, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 14, texture = 0 }, -- T-Shirt
                    ['torso2'] = { item = 257, texture = 0 }, -- Jackets
                    ['vest'] = { item = 0, texture = 0 }, -- Vest
                    ['decals'] = { item = 65, texture = 0 }, -- Decals
                    ['accessory'] = { item = 96, texture = 0 }, -- Neck
                    ['bag'] = { item = 21, texture = 10 }, -- Bag
                    ['pants'] = { item = 99, texture = 0 }, -- Pants
                    ['shoes'] = { item = 62, texture = 22 }, -- Shoes
                    ['mask'] = { item = 0, texture = 0 }, -- Mask
                    ['hat'] = { item = 121, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['ear'] = { item = 0, texture = 0 } -- Ear accessories
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [2] = {
                name = 'Ambulancière Manches Courtes',
                outfitData = {
                    ['arms'] = { item = 96, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 14, texture = 0 }, -- T-Shirt
                    ['torso2'] = { item = 258, texture = 0 }, -- Jackets
                    ['vest'] = { item = 0, texture = 0 }, -- Vest
                    ['decals'] = { item = 66, texture = 1 }, -- Decals
                    ['accessory'] = { item = 96, texture = 0 }, -- Neck
                    ['bag'] = { item = 21, texture = 10 }, -- Bag
                    ['pants'] = { item = 99, texture = 0 }, -- Pants
                    ['shoes'] = { item = 62, texture = 22 }, -- Shoes
                    ['mask'] = { item = 0, texture = 0 }, -- Mask
                    ['hat'] = { item = 121, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['ear'] = { item = 0, texture = 0 } -- Ear accessories
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [3] = {
                name = 'Infirmière',
                outfitData = {
                    ['arms'] = { item = 96, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 14, texture = 0 }, -- T-Shirt
                    ['torso2'] = { item = 249, texture = 0 }, -- Jackets
                    ['vest'] = { item = 0, texture = 0 }, -- Vest
                    ['decals'] = { item = 66, texture = 0 }, -- Decals
                    ['accessory'] = { item = 96, texture = 0 }, -- Neck
                    ['bag'] = { item = 21, texture = 10 }, -- Bag
                    ['pants'] = { item = 99, texture = 1 }, -- Pants
                    ['shoes'] = { item = 62, texture = 22 }, -- Shoes
                    ['mask'] = { item = 0, texture = 0 }, -- Mask
                    ['hat'] = { item = 121, texture = 1 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['ear'] = { item = 0, texture = 0 } -- Ear accessories
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [4] = {
                name = 'Médecin Généraliste Manches Longues',
                outfitData = {
                    ['arms'] = { item = 96, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 14, texture = 0 }, -- T-Shirt
                    ['torso2'] = { item = 25, texture = 6 }, -- Jackets
                    ['vest'] = { item = 0, texture = 0 }, -- Vest
                    ['decals'] = { item = 0, texture = 0 }, -- Decals
                    ['accessory'] = { item = 96, texture = 0 }, -- Neck
                    ['bag'] = { item = 21, texture = 10 }, -- Bag
                    ['pants'] = { item = 34, texture = 0 }, -- Pants
                    ['shoes'] = { item = 62, texture = 22 }, -- Shoes
                    ['mask'] = { item = 0, texture = 0 }, -- Mask
                    ['hat'] = { item = -1, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['ear'] = { item = 0, texture = 0 } -- Ear accessories
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [5] = {
                name = 'Médecin Généraliste Manches Courtes',
                outfitData = {
                    ['arms'] = { item = 91, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 14, texture = 0 }, -- T-Shirt
                    ['torso2'] = { item = 25, texture = 6 }, -- Jackets
                    ['vest'] = { item = 0, texture = 0 }, -- Vest
                    ['decals'] = { item = 0, texture = 0 }, -- Decals
                    ['accessory'] = { item = 96, texture = 0 }, -- Neck
                    ['bag'] = { item = 21, texture = 10 }, -- Bag
                    ['pants'] = { item = 34, texture = 0 }, -- Pants
                    ['shoes'] = { item = 62, texture = 22 }, -- Shoes
                    ['mask'] = { item = 0, texture = 0 }, -- Mask
                    ['hat'] = { item = -1, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['ear'] = { item = 0, texture = 0 } -- Ear accessories
                },
                grades = { 0, 1, 2, 3 },
            },
        }
    },
    ['police'] = {
        ['Male'] = {
            [1] = {
                name = 'LSPD',
                outfitData = {
                    ['pants'] = { item = 35, texture = 0 }, -- Pants
                    ['arms'] = { item = 14, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 32, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 4, texture = 0 }, -- Body Vest
                    ['torso2'] = { item = 193, texture = 13 }, -- Jacket
                    ['shoes'] = { item = 12, texture = 6 }, -- Shoes
                    ['accessory'] = { item = 0, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = 46, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 0, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [2] = {
                name = 'LSPD Officier',
                outfitData = {
                    ['pants'] = { item = 35, texture = 0 }, -- Pants
                    ['arms'] = { item = 14, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 32, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 4, texture = 0 }, -- Body Vest
                    ['torso2'] = { item = 193, texture = 13 }, -- Jacket
                    ['shoes'] = { item = 12, texture = 6 }, -- Shoes
                    ['accessory'] = { item = 8, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = 46, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 0, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4},
            },
            [3] = {
                name = 'BCSO',
                outfitData = {
                    ['pants'] = { item = 47, texture = 1 }, -- Pants
                    ['arms'] = { item = 0, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 32, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 4, texture = 1 }, -- Body Vest
                    ['torso2'] = { item = 190, texture = 2 }, -- Jacket
                    ['shoes'] = { item = 54, texture = 0 }, -- Shoes
                    ['accessory'] = { item = 0, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = -1, texture = -1 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 0, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4},
            },
            [4] = {
                name = 'BCSO Sheriff',
                outfitData = {
                    ['pants'] = { item = 47, texture = 1 }, -- Pants
                    ['arms'] = { item = 0, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 32, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 4, texture = 1 }, -- Body Vest
                    ['torso2'] = { item = 190, texture = 2 }, -- Jacket
                    ['shoes'] = { item = 54, texture = 0 }, -- Shoes
                    ['accessory'] = { item = 8, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = -1, texture = -1 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 0, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4},
            },
            [5] = {
                name = 'FIB',
                outfitData = {
                    ['pants'] = { item = 35, texture = 0 }, -- Pants
                    ['arms'] = { item = 1, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 153, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 20, texture = 9 }, -- Body Vest
                    ['torso2'] = { item = 200, texture = 11 }, -- Jacket
                    ['shoes'] = { item = 12, texture = 6 }, -- Shoes
                    ['accessory'] = { item = 0, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = -1, texture = -1 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 0, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4},
            },
            [6] = {
                name = 'SWAT / Intervention',
                outfitData = {
                    ['pants'] = { item = 129, texture = 0 }, -- Pants
                    ['arms'] = { item = 14, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 130, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 20, texture = 0 }, -- Body Vest
                    ['torso2'] = { item = 220, texture = 0 }, -- Jacket
                    ['shoes'] = { item = 12, texture = 6 }, -- Shoes
                    ['accessory'] = { item = 108, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = 150, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 35, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                name = 'Short Sleeve',
                outfitData = {
                    ['pants'] = { item = 133, texture = 0 }, -- Pants
                    ['arms'] = { item = 31, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 35, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 34, texture = 0 }, -- Body Vest
                    ['torso2'] = { item = 48, texture = 0 }, -- Jacket
                    ['shoes'] = { item = 52, texture = 0 }, -- Shoes
                    ['accessory'] = { item = 0, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = 0, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 0, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [2] = {
                name = 'Trooper Tan',
                outfitData = {
                    ['pants'] = { item = 133, texture = 0 }, -- Pants
                    ['arms'] = { item = 31, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 35, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 34, texture = 0 }, -- Body Vest
                    ['torso2'] = { item = 327, texture = 3 }, -- Jacket
                    ['shoes'] = { item = 52, texture = 0 }, -- Shoes
                    ['accessory'] = { item = 0, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = 0, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 0, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [3] = {
                name = 'Long Sleeve',
                outfitData = {
                    ['pants'] = { item = 133, texture = 0 }, -- Pants
                    ['arms'] = { item = 31, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 35, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 34, texture = 0 }, -- Body Vest
                    ['torso2'] = { item = 327, texture = 0 }, -- Jacket
                    ['shoes'] = { item = 52, texture = 0 }, -- Shoes
                    ['accessory'] = { item = 0, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = 0, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 0, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [4] = {
                name = 'Trooper Black',
                outfitData = {
                    ['pants'] = { item = 133, texture = 0 }, -- Pants
                    ['arms'] = { item = 31, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 35, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 34, texture = 0 }, -- Body Vest
                    ['torso2'] = { item = 327, texture = 8 }, -- Jacket
                    ['shoes'] = { item = 52, texture = 0 }, -- Shoes
                    ['accessory'] = { item = 0, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = 0, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 0, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [5] = {
                name = 'SWAT',
                outfitData = {
                    ['pants'] = { item = 135, texture = 1 }, -- Pants
                    ['arms'] = { item = 213, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 0, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 17, texture = 2 }, -- Body Vest
                    ['torso2'] = { item = 327, texture = 8 }, -- Jacket
                    ['shoes'] = { item = 52, texture = 0 }, -- Shoes
                    ['accessory'] = { item = 102, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = 149, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 35, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [6] = {
                name = 'SWAT / Intervention',
                outfitData = {
                    ['pants'] = { item = 130, texture = 1 }, -- Pants
                    ['arms'] = { item = 172, texture = 0 }, -- Arms
                    ['t-shirt'] = { item = 15, texture = 0 }, -- T Shirt
                    ['vest'] = { item = 15, texture = 2 }, -- Body Vest
                    ['torso2'] = { item = 336, texture = 3 }, -- Jacket
                    ['shoes'] = { item = 24, texture = 0 }, -- Shoes
                    ['accessory'] = { item = 133, texture = 0 }, -- Neck Accessory
                    ['bag'] = { item = 21, texture = 0 }, -- Bag
                    ['hat'] = { item = 150, texture = 0 }, -- Hat
                    ['glass'] = { item = 0, texture = 0 }, -- Glasses
                    ['mask'] = { item = 52, texture = 0 } -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    -- Tenues Entreprises
    ['realestate'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['tunershop'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['bennys'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Costume',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 3, 4 },
            },
            [2] = {
                -- Outfits
                outfitLabel = 'Mécano',
                outfitData = {
                    ["pants"]     = { item = 39, texture = 0 }, -- Pants
                    ["arms"]      = { item = 14, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 155, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 65, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 56, texture = 1 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            },
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Costume',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 3, 4 },
            },
            [2] = {
                outfitLabel = 'Mécano',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['hayes'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['lscustoms'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['mclost'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['casino'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['taxi'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Chauffeur',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Chauffeuse',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['autocare'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['bahamas'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['cardealer'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['luxury'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['unicorn'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['studio'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 0 }, -- Pants
                    ["arms"]      = { item = 1, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 31, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Worker',
                outfitData = {
                    ["pants"]     = { item = 57, texture = 2 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 105, texture = 7 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 5 }, -- Shoes
                    ["accessory"] = { item = 11, texture = 3 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 0, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    -- Tenues Factions
    ['ballas'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Ballas Gang',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Ballas Gang',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        }
    },
    ['families'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Families Gang',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Families Gang',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        }
    },
    ['marabunta'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Marabunta Grande',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Marabunta Grande',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        }
    },
    ['vagos'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Ballas Gang',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Ballas Gang',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        }
    },
    ['lostmc'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Lost MC',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5, 6 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Lost MC',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5, 6 },
            }
        }
    },
    ['oneill'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Fraternité O\'Neill',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Fraternité O\'Neill',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3 },
            }
        }
    },
    ['cayocartel'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Cartel de Cayo Perico',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Cartel de Cayo Perico',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3 },
            }
        }
    },
    ['cartel'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Soldado Madrazo',
                outfitData = {
                    ["pants"]     = { item = 4, texture = 1 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 94, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 94, texture = 12 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 106, texture = -20 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 1, 2, 3, 4, 5 },
            },
            [2] = {
                -- Outfits
                outfitLabel = 'Sicario Madrazo',
                outfitData = {
                    ["pants"]     = { item = 24, texture = 0 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 94, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 94, texture = 12 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 13, texture = -2 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 2, 3, 4, 5 },
            },
            [3] = {
                -- Outfits
                outfitLabel = 'Commandante Madrazo',
                outfitData = {
                    ["pants"]     = { item = 28, texture = 14 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 132, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 13, texture = -2 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 3, 4, 5 },
            },
            [4] = {
                -- Outfits
                outfitLabel = 'Segundo Madrazo',
                outfitData = {
                    ["pants"]     = { item = 20, texture = 0 }, -- Pants
                    ["arms"]      = { item = 4, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 75, texture = 5 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 295, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 13, texture = -3 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 4, 5 },
            },
            [5] = {
                -- Outfits
                outfitLabel = 'El Patron Madrazo',
                outfitData = {
                    ["pants"]     = { item = 24, texture = 1 }, -- Pants
                    ["arms"]      = { item = 20, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 74, texture = 3 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 295, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 13, texture = -3 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 5 },
            },
            [6] = {
                -- Outfits
                outfitLabel = 'Opération Madrazo',
                outfitData = {
                    ["pants"]     = { item = 50, texture = 2 }, -- Pants
                    ["arms"]      = { item = 19, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 57, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 15, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 319, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 24, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 106, texture = -20 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            },
            [7] = {
                -- Outfits
                outfitLabel = 'Opération Madrazo 2',
                outfitData = {
                    ["pants"]     = { item = 50, texture = 2 }, -- Pants
                    ["arms"]      = { item = 17, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 111, texture = 3 }, -- Jacket
                    ["shoes"]     = { item = 24, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 106, texture = -20 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        },
        ['Female'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Soldado Madrazo',
                outfitData = {
                    ["pants"]     = { item = 1, texture = 6 }, -- Pants
                    ["arms"]      = { item = 14, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 85, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 1, texture = 1 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 105, texture = 20 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 1, 2, 3, 4, 5 },
            },
            [2] = {
                -- Outfits
                outfitLabel = 'Sicario Madrazo',
                outfitData = {
                    ["pants"]     = { item = 34, texture = 0 }, -- Pants
                    ["arms"]      = { item = 14, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 85, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 25, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 20, texture = 2 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 2, 3, 4, 5 },
            },
            [3] = {
                -- Outfits
                outfitLabel = 'Commandante Madrazo',
                outfitData = {
                    ["pants"]     = { item = 50, texture = 4 }, -- Pants
                    ["arms"]      = { item = 14, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 129, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 29, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 20, texture = 2 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 3, 4, 5 },
            },
            [4] = {
                -- Outfits
                outfitLabel = 'Segundo Madrazo',
                outfitData = {
                    ["pants"]     = { item = 23, texture = 0 }, -- Pants
                    ["arms"]      = { item = 6, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 57, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 306, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 29, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 20, texture = 1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 18 }, -- Mask
                },
                grades = { 4, 5 },
            },
            [5] = {
                -- Outfits
                outfitLabel = 'Opération Madrazo 1',
                outfitData = {
                    ["pants"]     = { item = 30, texture = 0 }, -- Pants
                    ["arms"]      = { item = 44, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 17, texture = 2 }, -- Body Vest
                    ["torso2"]    = { item = 286, texture = 1 }, -- Jacket
                    ["shoes"]     = { item = 25, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 105, texture = 20 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            },
            [6] = {
                -- Outfits
                outfitLabel = 'Opération Madrazo 2',
                outfitData = {
                    ["pants"]     = { item = 30, texture = 0 }, -- Pants
                    ["arms"]      = { item = 36, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 34, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 17, texture = 2 }, -- Body Vest
                    ["torso2"]    = { item = 136, texture = 3 }, -- Jacket
                    ["shoes"]     = { item = 25, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 105, texture = 20 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 111, texture = 17 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        }
    },
    ['yakuza'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Yamaguchi-Gumi',
                outfitData = {
                    ["pants"]     = { item = 24, texture = 0 }, -- Pants
                    ["arms"]      = { item = 22, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 33, texture = 4 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 31, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 27, texture = 12 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 83, texture = 0 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 178, texture = 10 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            },
            [2] = {
                -- Outfits
                outfitLabel = 'Tenue d\'opération',
                outfitData = {
                    ["pants"]     = { item = 24, texture = 0 }, -- Pants
                    ["arms"]      = { item = 19, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 13, texture = 5 }, -- Jacket
                    ["shoes"]     = { item = 23, texture = 3 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = -1 }, -- Hat
                    ["glass"]     = { item = -1, texture = -1 }, -- Glasses
                    ["mask"]      = { item = 54, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            },
            [3] = {
                -- Outfits
                outfitLabel = 'Temple',
                outfitData = {
                    ["pants"]     = { item = 119, texture = 8 }, -- Pants
                    ["arms"]      = { item = 14, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 310, texture = 8 }, -- Jacket
                    ["shoes"]     = { item = 34, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = 0 }, -- Hat
                    ["glass"]     = { item = 34, texture = 1 }, -- Glasses
                    ["mask"]      = { item = 54, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Yamaguchi-Gumi',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 37, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            },
            [2] = {
                -- Outfits
                outfitLabel = 'Tenue d\'opération',
                outfitData = {
                    ["pants"]     = { item = 5, texture = 9 }, -- Pants
                    ["arms"]      = { item = 0, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 262, texture = 2 }, -- Jacket
                    ["shoes"]     = { item = 9, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 12, texture = -1 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 178, texture = 10 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            },
            [3] = {
                -- Outfits
                outfitLabel = 'Temple',
                outfitData = {
                    ["pants"]     = { item = 119, texture = 8 }, -- Pants
                    ["arms"]      = { item = 14, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 15, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 310, texture = 8 }, -- Jacket
                    ["shoes"]     = { item = 34, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = -1, texture = 0 }, -- Hat
                    ["glass"]     = { item = 34, texture = 1 }, -- Glasses
                    ["mask"]      = { item = 54, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5 },
            }
        }
    },
    ['bratva'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Vory v Zakone',
                outfitData = {
                    ["pants"]     = { item = 24, texture = 0 }, -- Pants
                    ["arms"]      = { item = 33, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 33, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 27, texture = 2 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 0, texture = -0 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 51, texture = 1 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            };
            [2] = {
                -- Outfits
                outfitLabel = 'Guerre',
                outfitData = {
                    ["pants"]     = { item = 59, texture = 9 }, -- Pants
                    ["arms"]      = { item = 33, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 170, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 111, texture = 3 }, -- Jacket
                    ["shoes"]     = { item = 25, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 0, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 106, texture = 20 }, -- Hat
                    ["glass"]     = { item = 5, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 169, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Vory v Zakone',
                outfitData = {
                    ["pants"]     = { item = 24, texture = 0 }, -- Pants
                    ["arms"]      = { item = 33, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 33, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 27, texture = 2 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 0, texture = -0 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 51, texture = 1 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            },
            [2] = {
                -- Outfits
                outfitLabel = 'Guerre',
                outfitData = {
                    ["pants"]     = { item = 24, texture = 0 }, -- Pants
                    ["arms"]      = { item = 33, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 33, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 0, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 294, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 10, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 27, texture = 2 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 0, texture = -0 }, -- Hat
                    ["glass"]     = { item = 0, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 51, texture = 1 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4 },
            }
        }
    },
    ['triades'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Tenue d\'Opération',
                outfitData = {
                    ["pants"]     = { item = 37, texture = 2 }, -- Pants
                    ["arms"]      = { item = 33, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 170, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 108, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 72, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 52, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 83, texture = 0 }, -- Hat
                    ["glass"]     = { item = 33, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 51, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5, 6 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Tenue d\'Opération',
                outfitData = {
                    ["pants"]     = { item = 37, texture = 2 }, -- Pants
                    ["arms"]      = { item = 33, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 170, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 108, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 72, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 52, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 83, texture = 0 }, -- Hat
                    ["glass"]     = { item = 33, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 51, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5, 6 },
            }
        }
    },
    ['duggan'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Tenue d\'Opération',
                outfitData = {
                    ["pants"]     = { item = 37, texture = 2 }, -- Pants
                    ["arms"]      = { item = 33, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 170, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 108, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 72, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 52, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 83, texture = 0 }, -- Hat
                    ["glass"]     = { item = 33, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 51, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5, 6 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Tenue d\'Opération',
                outfitData = {
                    ["pants"]     = { item = 37, texture = 2 }, -- Pants
                    ["arms"]      = { item = 33, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 170, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 108, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 72, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 52, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 83, texture = 0 }, -- Hat
                    ["glass"]     = { item = 33, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 51, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5, 6 },
            }
        }
    },
    ['bandidos'] = {
        ['Male'] = {
            [1] = {
                -- Outfits
                outfitLabel = 'Tenue d\'Opération',
                outfitData = {
                    ["pants"]     = { item = 37, texture = 2 }, -- Pants
                    ["arms"]      = { item = 33, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 170, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 108, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 72, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 52, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 83, texture = 0 }, -- Hat
                    ["glass"]     = { item = 33, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 51, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5, 6 },
            }
        },
        ['Female'] = {
            [1] = {
                outfitLabel = 'Tenue d\'Opération',
                outfitData = {
                    ["pants"]     = { item = 37, texture = 2 }, -- Pants
                    ["arms"]      = { item = 33, texture = 0 }, -- Arms
                    ["t-shirt"]   = { item = 170, texture = 0 }, -- T Shirt
                    ["vest"]      = { item = 108, texture = 0 }, -- Body Vest
                    ["torso2"]    = { item = 72, texture = 0 }, -- Jacket
                    ["shoes"]     = { item = 8, texture = 0 }, -- Shoes
                    ["accessory"] = { item = 52, texture = 0 }, -- Neck Accessory
                    ["bag"]       = { item = 0, texture = 0 }, -- Bag
                    ["hat"]       = { item = 83, texture = 0 }, -- Hat
                    ["glass"]     = { item = 33, texture = 0 }, -- Glasses
                    ["mask"]      = { item = 51, texture = 0 }, -- Mask
                },
                grades = { 0, 1, 2, 3, 4, 5, 6 },
            }
        }
    },
}

Config.InitialPlayerClothes = {
    Male = {
        Model = "mp_m_freemode_01",
        Components = {
            {
                component_id = 0, -- Face
                drawable = 0,
                texture = 0
            },
            {
                component_id = 1, -- Mask
                drawable = 0,
                texture = 0
            },
            {
                component_id = 2, -- Hair
                drawable = 0,
                texture = 0
            },
            {
                component_id = 3, -- Upper Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 4, -- Lower Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 5, -- Bag
                drawable = 0,
                texture = 0
            },
            {
                component_id = 6, -- Shoes
                drawable = 0,
                texture = 0
            },
            {
                component_id = 7, -- Scarf & Chains
                drawable = 0,
                texture = 0
            },
            {
                component_id = 8, -- Shirt
                drawable = 0,
                texture = 0
            },
            {
                component_id = 9, -- Body Armor
                drawable = 0,
                texture = 0
            },
            {
                component_id = 10, -- Decals
                drawable = 0,
                texture = 0
            },
            {
                component_id = 11, -- Jacket
                drawable = 0,
                texture = 0
            }
        },
        Props = {
            {
                prop_id = 0, -- Hat
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 1, -- Glasses
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 2, -- Ear
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 6, -- Watch
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 7, -- Bracelet
                drawable = -1,
                texture = -1
            }
        },
        Hair = {
            color = 0,
            highlight = 0,
            style = 0,
            texture = 0
        }
    },
    Female = {
        Model = "mp_f_freemode_01",
        Components = {
            {
                component_id = 0, -- Face
                drawable = 0,
                texture = 0
            },
            {
                component_id = 1, -- Mask
                drawable = 0,
                texture = 0
            },
            {
                component_id = 2, -- Hair
                drawable = 0,
                texture = 0
            },
            {
                component_id = 3, -- Upper Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 4, -- Lower Body
                drawable = 0,
                texture = 0
            },
            {
                component_id = 5, -- Bag
                drawable = 0,
                texture = 0
            },
            {
                component_id = 6, -- Shoes
                drawable = 0,
                texture = 0
            },
            {
                component_id = 7, -- Scarf & Chains
                drawable = 0,
                texture = 0
            },
            {
                component_id = 8, -- Shirt
                drawable = 0,
                texture = 0
            },
            {
                component_id = 9, -- Body Armor
                drawable = 0,
                texture = 0
            },
            {
                component_id = 10, -- Decals
                drawable = 0,
                texture = 0
            },
            {
                component_id = 11, -- Jacket
                drawable = 0,
                texture = 0
            }
        },
        Props = {
            {
                prop_id = 0, -- Hat
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 1, -- Glasses
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 2, -- Ear
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 6, -- Watch
                drawable = -1,
                texture = -1
            },
            {
                prop_id = 7, -- Bracelet
                drawable = -1,
                texture = -1
            }
        },
        Hair = {
            color = 0,
            highlight = 0,
            style = 0,
            texture = 0
        }
    }
}
