local sellables = {
    -- Drogues labos
    packaged_cocaine = {
        min_price = 180, -- min price offered by peds
        max_price = 250, -- max price offered by peds
        min_sale = 1,   -- min amount to sell
        max_sale = 5,  -- max amount to sell
    },
    processed_meth = {
        min_price = 200, -- min price offered by peds
        max_price = 300, -- max price offered by peds
        min_sale = 1,   -- min amount to sell
        max_sale = 5,  -- max amount to sell
    },
    weed_packaged = {
        min_price = 120, -- min price offered by peds
        max_price = 180, -- max price offered by peds
        min_sale = 1,   -- min amount to sell
        max_sale = 5,  -- max amount to sell
    },
    -- Drogues Champs et Tables
    coke = {
        min_price = 90, -- min price offered by peds
        max_price = 180, -- max price offered by peds
        min_sale = 1,   -- min amount to sell
        max_sale = 5,  -- max amount to sell
    },
    heroin = {
        min_price = 80, -- min price offered by peds
        max_price = 160, -- max price offered by peds
        min_sale = 1,   -- min amount to sell
        max_sale = 5,  -- max amount to sell
    },
    lsd = {
        min_price = 140, -- min price offered by peds
        max_price = 260, -- max price offered by peds
        min_sale = 1,   -- min amount to sell
        max_sale = 5,  -- max amount to sell
    },
    marijuana = {
        min_price = 60, -- min price offered by peds
        max_price = 120, -- max price offered by peds
        min_sale = 1,   -- min amount to sell
        max_sale = 5,  -- max amount to sell
    },
    meth = {
        min_price = 140, -- min price offered by peds
        max_price = 260, -- max price offered by peds
        min_sale = 1,   -- min amount to sell
        max_sale = 5,  -- max amount to sell
    },
}

_ENV.Sellables = sellables