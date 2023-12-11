config = {
    -- Minutes until zone can be re-captured by another gang after capture.
    seizeCooldown = 0,    

    -- Seconds to wait between saving zones to database.
    saveZonesAfter = 10, 

    influenceModifiers = {
        players = 0, -- receive X influence/reputation every influenceTick for each player in the territory.
        murder  = 0,   -- receive X influence/reputation for every PVP kill in a territory.
        sale    = 1    -- receive X influence/reputation for every sale in a territory.
    },

    -- How often should influence/reputation be calculated on the server side?
    -- NOTE: This will re-sync to all clients every X ms. A higher value will prevent excessive network load.
    influenceTick = 5000,

    -- Options for HUD text.
    hud = {
        render  = true,
        x       = 0.8,
        y       = 0.8,
        width   = 0.2,
        height  = 0.2,
        scale   = 0.4,
        centre  = false,
        right   = true,
        font    = 4,
        r       = 255,
        g       = 255,
        b       = 255,
        a       = 255,

        showController      = true,
        showReputation      = true,
        showSeizedAt        = true,
        showLastLogin       = true,
    },

    areaBlipColors = {
        police = 74,
        ballas = 27,
        bandidos = 47,
        bratva = 40,
        cartel = 56,
        cayocartel = 81,
        families = 69,
        marabunta = 26,
        oneill = 64,
        patria = 19,
        soa = 72,
        triades = 59,
        vagos = 46,
        yakuza = 76
    },

    debugRoutingBuckets = true,
}