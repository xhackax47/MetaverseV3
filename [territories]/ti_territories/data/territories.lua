local Territories = {
    {
        name = "EastV",
        label = "East V",

        hostile = false,         -- pvp reward?
        influenceInLab = true,  -- influence lab reputation from inside lab?

        requiredOnline = 0,     -- players from owning faction required online before reputation can be gained/lost
        requiredTimeout = 0,    -- minutes spent offline before other jobs/groups can take control

        zoneHeight = 40.0,

        zonePoints = {
            vector3(630.53,-333.58,43.52),
            vector3(764.38,-408.70,25.89),
            vector3(973.43,-354.42,49.79),
            vector3(1087.25,-153.30,58.88),
            vector3(813.73,2.26,73.20)
        },

        jobs = {
            police = 0
        },

        groups = {
            ballas = 0,
            bandidos = 0,
            bratva = 0,
            cartel = 0,
            cayocartel = 0,
            families = 0,
            marabunta = 0,
            oneill = 0,
            patria = 0,
            soa = 0,
            triades = 0,
            vagos = 0,
            yakuza = 0
        },

        areaBlips = {
            renderForAll            = true, -- should this blip render for all players?
            renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
            renderForControlling    = true,  -- should this blip render for only the controlling gang? 

            blips = {
                { 
                    position  = vector3(904.06,-164.28,73.97),
                    width     = 200.0,
                    height    = 350.0,
                    heading   = 60,
                    display   = 3,
                },
                {
                    position  = vector3(789.57,-328.67,73.97),
                    width     = 200.0,
                    height    = 300.0,
                    heading   = 60,
                    display   = 3,     
                }
            },
        },

        labs = {
            {
                entry = vector4(1005.78,-114.50,73.97,151.68),
                lab   = Labs.money,
                label = "Manufacture de billets",

                blip  = {
                    label       = "Manufacture de billets",
                    position    = vector3(1005.76,-114.52,73.50),
                    sprite      = 500,
                    color       = 1,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = true, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },
            },
        },
    },

    {
        name = "Davis",
        label = "Davis",

        hostile = false,         -- pvp reward?
        influenceInLab = true,  -- influence lab reputation from inside lab?

        requiredOnline = 0,     -- players from owning faction required online before reputation can be gained/lost
        requiredTimeout = 0,    -- minutes spent offline before other jobs/groups can take control

        zoneHeight = 40.0,

        zonePoints = {
            vector3(250.59,-1861.83,26.67),
            vector3(134.56,-2008.05,18.10),
            vector3(-141.95,-1776.71,29.93),
            vector3(163.69,-1409.17,29.32),
            vector3(351.40,-1557.03,29.16),
            vector3(162.96,-1784.36,28.85)
        },

        jobs = {
            police = 0
        },

        groups = {
            ballas = 0,
            bandidos = 0,
            bratva = 0,
            cartel = 0,
            cayocartel = 0,
            families = 0,
            marabunta = 0,
            oneill = 0,
            patria = 0,
            soa = 0,
            triades = 0,
            vagos = 0,
            yakuza = 0
        },

        areaBlips = {
            renderForAll            = true, -- should this blip render for all players?
            renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
            renderForControlling    = true,  -- should this blip render for only the controlling gang? 

            blips = {
                {
                    position  = vector3(53.95,-1818.36,27.66),
                    width     = 210.0,
                    height    = 390.0,
                    heading   = 50,
                    display   = 3
                },
                {
                    position  = vector3(169.062, -1587.663, 77.28895),
                    width     = 300.0,
                    height    = 260.0,
                    heading   = 50,
                    display   = 3
                }, 
            },
        },

        labs = {
            {
                entry = vector4(182.99,-1836.59,28.10,320.55),
                lab   = Labs.weed,
                label = "Laboratoire de weed pure",

                blip  = {
                    label       = "Laboratoire de weed pure",
                    position    = vector3(183.03,-1836.59,28.10),
                    sprite      = 496,
                    color       = 2,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = true, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },
            },
            --[[
            {
                entry = vector4(160.20,-1540.93,29.14,227.92),
                lab   = Labs.money,
                label = "Manufacture de billets",

                blip  = {
                    label       = "Manufacture de billets",
                    position    = vector3(160.20,-1540.93,29.14),
                    sprite      = 500,
                    color       = 1,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = false, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },                
            }
            ]]--
        },
    },

    {
        name = "ChamberlainHills",
        label = "Chamberlain Hills",

        hostile = false,         -- pvp reward?
        influenceInLab = true,  -- influence lab reputation from inside lab?

        requiredOnline = 0,     -- players from owning faction required online before reputation can be gained/lost
        requiredTimeout = 0,    -- minutes spent offline before other jobs/groups can take control

        zoneHeight = 40.0,

        zonePoints = {
            vector3(-165.10,-1760.50,29.95),
            vector3(-289.19,-1637.57,31.85),
            vector3(-130.24,-1440.24,33.43),
            vector3(3.33,-1555.08,29.22)
        },

        jobs = {
            police = 0,
            mechanic = 0,
        },

        groups = {
            ballas = 0,
            bandidos = 0,
            bratva = 0,
            cartel = 0,
            cayocartel = 0,
            families = 0,
            marabunta = 0,
            oneill = 0,
            patria = 0,
            soa = 0,
            triades = 0,
            vagos = 0,
            yakuza = 0
        },

        areaBlips = {
            renderForAll            = true, -- should this blip render for all players?
            renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
            renderForControlling    = true,  -- should this blip render for only the controlling gang? 

            blips = {
                {
                    position  = vector3(-147.9323, -1600.784, 38.29156),
                    width     = 280.0,
                    height    = 200.0,
                    heading   = 50,
                    display   = 3
                }
            },
        },

        labs = {
            {
                entry = vector4(-161.60,-1638.27,37.25,144.44),
                lab   = Labs.meth,
                label = "Laboratoire de meth pure",

                blip  = {
                    label       = "Laboratoire de meth pure",
                    position    = vector3(-161.60,-1638.27,37.25),
                    sprite      = 499,
                    color       = 3,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = true, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },
            },
        },
    },

    {
        name = "Rancho",
        label = "Rancho",

        hostile = false,         -- pvp reward?
        influenceInLab = true,  -- influence lab reputation from inside lab?

        requiredOnline = 0,     -- players from owning faction required online before reputation can be gained/lost
        requiredTimeout = 0,    -- minutes spent offline before other jobs/groups can take control   

        zoneHeight = 40.0,  

        zonePoints = {
            vector3(192.16,-1781.10,29.04),
            vector3(367.65,-1564.87,29.33),
            vector3(629.99,-1781.57,14.61),
            vector3(457.60,-2002.04,23.19)
        },

        jobs = {
            police = 0
        },

        groups = {
            ballas = 0,
            bandidos = 0,
            bratva = 0,
            cartel = 0,
            cayocartel = 0,
            families = 0,
            marabunta = 0,
            oneill = 0,
            patria = 0,
            soa = 0,
            triades = 0,
            vagos = 0,
            yakuza = 0
        },

        areaBlips = {
            renderForAll            = true, -- should this blip render for all players?
            renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
            renderForControlling    = true,  -- should this blip render for only the controlling gang? 

            blips = {
                {
                    position  = vector3(320.2412, -2039.633, 28.96141),
                    width     = 220.0,
                    height    = 290.0,
                    heading   = 50,
                    display   = 3
                },
                {
                    position  = vector3(413.2437, -1782.743, 40.27221),
                    width     = 300.0,
                    height    = 370.0,
                    heading   = 50,
                    display   = 3
                }
            },
        },

        labs = {
            {
                entry = vector4(464.95,-1894.17,25.88,297.69),
                lab   = Labs.cocaine,
                label = "Laboratoire de cocaïne pure",

                blip  = {
                    label       = "Laboratoire de cocaïne pure",
                    position    = vector3(464.95,-1894.17,25.88),
                    sprite      = 497,
                    color       = 0,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = true, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },
            },
        },  
    },

    {
        name = "CypressFlats",
        label = "Cypress Flats",

        hostile = false,         -- pvp reward?
        influenceInLab = true,  -- influence lab reputation from inside lab?

        requiredOnline = 0,     -- players from owning faction required online before reputation can be gained/lost
        requiredTimeout = 0,    -- minutes spent offline before other jobs/groups can take control   

        zoneHeight = 40.0,  

        zonePoints = {
            vector3(765.80,-2431.15,19.95),
            vector3(1019.40,-2457.86,28.55),
            vector3(1054.40,-2109.07,32.68),
            vector3(1034.43,-2095.30,31.07),
            vector3(795.40,-2082.05,29.28)
        },

        jobs = {
            police = 0
        },

        groups = {
            ballas = 0,
            bandidos = 0,
            bratva = 0,
            cartel = 0,
            cayocartel = 0,
            families = 0,
            marabunta = 0,
            oneill = 0,
            patria = 0,
            soa = 0,
            triades = 0,
            vagos = 0,
            yakuza = 0
        },

        areaBlips = {
            renderForAll            = true, -- should this blip render for all players?
            renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
            renderForControlling    = true,  -- should this blip render for only the controlling gang? 

            blips = {
                {
                    position  = vector3(910.42,-2260.95,30.56),
                    width     = 280.0,
                    height    = 375.0,
                    heading   = 175,
                    display   = 3
                }
            },
        },

        labs = {
            --[[
            {
                entry = vector4(844.16,-2118.33,30.52,272.09),
                lab   = Labs.cocaine,
                label = "Laboratoire de cocaïne pure",

                blip  = {
                    label       = "Laboratoire de cocaïne pure",
                    position    = vector3(844.16,-2118.33,30.52),
                    sprite      = 497,
                    color       = 0,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = false, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },
            },
            {
                entry = vector4(822.78,-2338.65,30.33,354.74),
                lab   = Labs.meth,
                label = "Laboratoire de meth pure",

                blip  = {
                    label       = "Laboratoire de meth pure",
                    position    = vector3(822.78,-2338.65,30.33),
                    sprite      = 499,
                    color       = 3,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = false, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },
            },
            {
                entry = vector4(970.97,-2405.50,31.49,85.61),
                lab   = Labs.weed,
                label = "Laboratoire de weed pure",

                blip  = {
                    label       = "Laboratoire de weed pure",
                    position    = vector3(970.97,-2405.50,31.49),
                    sprite      = 496,
                    color       = 2,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = false, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },
            },
            {
                entry = vector4(891.93,-2206.27,30.51,356.57),
                lab   = Labs.money,
                label = "Manufacture de billets",

                blip  = {
                    label       = "Manufacture de billets",
                    position    = vector3(891.93,-2206.27,30.51),
                    sprite      = 500,
                    color       = 1,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = false, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },
            },
            ]]--
        },  
    },

    {
        name = "VespucciCanals",
        label = "Vespucci Canals",

        hostile = false,         -- pvp reward?
        influenceInLab = true,  -- influence lab reputation from inside lab?

        requiredOnline = 0,     -- players from owning faction required online before reputation can be gained/lost
        requiredTimeout = 0,    -- minutes spent offline before other jobs/groups can take control   

        zoneHeight = 40.0,  

        zonePoints = {
            vector3(-1554.06,-1150.89,2.36),
            vector3(-986.90,-845.53,14.99),
            vector3(-827.38,-1157.22,7.29),
            vector3(-1407.49,-1467.82,3.06),
        },

        jobs = {
            police = 0
        },

        groups = {
            ballas = 0,
            bandidos = 0,
            bratva = 0,
            cartel = 0,
            cayocartel = 0,
            families = 0,
            marabunta = 0,
            oneill = 0,
            patria = 0,
            soa = 0,
            triades = 0,
            vagos = 0,
            yakuza = 0
        },

        areaBlips = {
            renderForAll            = true, -- should this blip render for all players?
            renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
            renderForControlling    = true,  -- should this blip render for only the controlling gang? 

            blips = {
                {
                    position  = vector3(-1189.40,-1156.98,13.12),
                    width     = 400.0,
                    height    = 700.0,
                    heading   = 298,
                    display   = 3
                },
            },
        },

        labs = {
            --[[
            {
                entry = vector4(-1212.14,-1070.50,8.36,115.97),
                lab   = Labs.meth,
                label = "Laboratoire de meth pure",

                blip  = {
                    label       = "Laboratoire de meth pure",
                    position    = vector3(-1212.14,-1070.50,8.36),
                    sprite      = 499,
                    color       = 3,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = false, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },
            },
            ]]--
        }
    },

    {
        name = "LaPuerta",
        label = "La Puerta",

        hostile = false,         -- pvp reward?
        influenceInLab = true,  -- influence lab reputation from inside lab?

        requiredOnline = 0,     -- players from owning faction required online before reputation can be gained/lost
        requiredTimeout = 0,    -- minutes spent offline before other jobs/groups can take control   

        zoneHeight = 40.0,  

        zonePoints = {
            vector3(-980.51,-1553.81,5.18),
            vector3(-1257.05,-1690.79,4.08),
            vector3(-1407.49,-1467.82,3.06),
            vector3(-1103.90,-1314.66,5.30)
        },

        jobs = {
            police = 0
        },

        groups = {
            ballas = 0,
            bandidos = 0,
            bratva = 0,
            cartel = 0,
            cayocartel = 0,
            families = 0,
            marabunta = 0,
            oneill = 0,
            patria = 0,
            soa = 0,
            triades = 0,
            vagos = 0,
            yakuza = 0
        },

        areaBlips = {
            renderForAll            = true, -- should this blip render for all players?
            renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
            renderForControlling    = true,  -- should this blip render for only the controlling gang? 

            blips = {
                {
                    position  = vector3(-1185.22,-1528.19,4.40),
                    width     = 280.0,
                    height    = 375.0,
                    heading   = 298,
                    display   = 3
                },
            },
        },

        labs = {
            --[[
            {
                entry = vector4(-1141.93,-1461.70,4.63,31.19),
                lab   = Labs.cocaine,
                label = "Laboratoire de cocaïne pure",

                blip  = {
                    label       = "Laboratoire de cocaïne pure",
                    position    = vector3(-1141.93,-1461.70,4.63),
                    sprite      = 497,
                    color       = 0,
                    alpha       = 255,
                    scale       = 0.7,
                    display     = 2,
                    highDetail  = true,
                    shortRange  = false,

                    renderForAll            = false, -- should this blip render for all players?
                    renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
                    renderForControlling    = true,  -- should this blip render for only the controlling gang?
                },
            },
            ]]--
        },  
    },
    {
        name = "Vinewood",
        label = "Vinewood",

        hostile = false,         -- pvp reward?
        influenceInLab = true,  -- influence lab reputation from inside lab?

        requiredOnline = 0,     -- players from owning faction required online before reputation can be gained/lost
        requiredTimeout = 0,    -- minutes spent offline before other jobs/groups can take control   

        zoneHeight = 40.0,  

        zonePoints = {
            vector3(-791.8301, 305.8892, 85.7005),
            vector3(47.6702, 307.3147, 110.9496),
            vector3(-54.9891, 22.8092, 72.0604),
            vector3(-756.6021, 60.3622, 52.5728)
           --vector3(795.40,-2082.05,29.28)
        },

        jobs = {
            police = 0
        },

        groups = {
            ballas = 0,
            bandidos = 0,
            bratva = 0,
            cartel = 0,
            cayocartel = 0,
            families = 0,
            marabunta = 0,
            oneill = 0,
            patria = 0,
            soa = 0,
            triades = 0,
            vagos = 0,
            yakuza = 0
        },

        areaBlips = {
            renderForAll            = true, -- should this blip render for all players?
            renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
            renderForControlling    = true,  -- should this blip render for only the controlling gang? 

            blips = {
                {
                    position  = vector3(-388.3483, 134.0838, 65.5183),
                    width     = 280.0,
                    height    = 375.0,
                    heading   = 175,
                    display   = 3
                }
            },
        },

        labs = {
        },  
    },
    {
        name = "RockfordHills",
        label = "Rockford Hills",

        hostile = false,         -- pvp reward?
        influenceInLab = true,  -- influence lab reputation from inside lab?

        requiredOnline = 0,     -- players from owning faction required online before reputation can be gained/lost
        requiredTimeout = 0,    -- minutes spent offline before other jobs/groups can take control   

        zoneHeight = 40.0,  

        zonePoints = {
            vector3(-1117.5593, 246.8912, 65.3554 ),
            vector3(-792.1327, 276.5591, 85.9363 ),
            vector3(-659.7286, -131.4769, 37.7258 ),
            vector3(-906.7065, -242.7831, 39.8927)
            --vector3(795.40,-2082.05,29.28)
        },

        jobs = {
            police = 0
        },

        groups = {
            ballas = 0,
            bandidos = 0,
            bratva = 0,
            cartel = 0,
            cayocartel = 0,
            families = 0,
            marabunta = 0,
            oneill = 0,
            patria = 0,
            soa = 0,
            triades = 0,
            vagos = 0,
            yakuza = 0
        },

        areaBlips = {
            renderForAll            = true, -- should this blip render for all players?
            renderForGangs          = false,  -- should this blip render for all jobs/groups that can control it?
            renderForControlling    = true,  -- should this blip render for only the controlling gang? 

            blips = {
                {
                    position  = vector3(-845.0875, 22.6907, 44.5518),
                    width     = 280.0,
                    height    = 375.0,
                    heading   = 175,
                    display   = 3
                }
            },
        },

        labs = {
        },  
    },
}

_ENV.Territories = Territories