local Labs = {
    money = {
        label = "Blanchiment",
        entry = vector4(1118.72,-3193.49,-40.39,0.0),
        interior = 247809,

        actions = {
            Actions.money.produce,
            Actions.money.package,
            Actions.money.clean
        }
    },

    weed = {
        label = "Weed pure",
        entry = vector4(1065.98,-3183.49,-39.16,272.28),
        interior = 247297,

        actions = {
            Actions.weed.gather,
            Actions.weed.trim
        }
    },

    meth = {
        label = "Meth pure",
        entry = vector4(997.09,-3200.66,-36.39,91.83),
        interior = 247041,

        actions = {
            Actions.meth.cook,
            Actions.meth.process
        }
    },

    cocaine = {
        label = "Cocaine pure",
        entry = vector4(1088.70,-3187.67,-38.99,3.51),
        interior = 247553,

        actions = {
            Actions.cocaine.gather,
            Actions.cocaine.package
        }
    }
}

_ENV.Labs = Labs