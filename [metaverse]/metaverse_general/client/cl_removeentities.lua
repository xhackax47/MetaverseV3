local objects = {
    --prop_sec_barier_02a & prop_sec_barier_02b
    { x = 266.09, y = -349.35, z = 44.74, model = "prop_sec_barier_02b" },
    { x = 285.28, y = -355.78, z = 45.13, model = "prop_sec_barier_02a" },
    --prop_boombox_01
    { x = 114.33, y = -1959.71, z = 20.18, model = "prop_boombox_01" },
    { x = -28.4, y = -1397.0, z = 30.15, model = "prop_boombox_01" },
    { x = -2313.76, y = 4385.1, z = 7.45, model = "prop_boombox_01" },
    { x = -1734.81, y = 4982.01, z = 5.14, model = "prop_boombox_01" },
    { x = -835.94, y = 5906.75, z = 4.63, model = "prop_boombox_01" },
    { x = 2509.56, y = -1221.74, z = 2.16, model = "prop_boombox_01" },
    { x = -3274.19, y = 1017.84, z = 4.42, model = "prop_boombox_01" },
    { x = -3079.0, y = 534.1, z = 1.58, model = "prop_boombox_01" },
    { x = -2766.21, y = -60.61, z = 5.24, model = "prop_boombox_01" },
    { x = -1239.74, y = -1783.09, z = 1.78, model = "prop_boombox_01" },
    { x = 1741.83, y = 2489.62, z = 45.05, model = "prop_boombox_01" },
    { x = -136.75, y = -1605.75, z = 35.06, model = "prop_boombox_01" },
    { x = 233.6, y = -265.82, z = 59.96, model = "prop_boombox_01" },
    { x = -2022.57, y = -1044.71, z = 3.0, model = "prop_boombox_01" },
    { x = -1368.11, y = 6729.12, z = 3.0, model = "prop_boombox_01" },
    { x = 1721.89, y = 2528.12, z = 45.67, model = "v_club_roc_micstd" },
}

CreateThread(function()
    while true do
        for k in pairs(objects) do
            local ent = GetClosestObjectOfType(objects[k].x, objects[k].y, objects[k].z, 2.0,
                GetHashKey(objects[k].model), false, false, false)

            SetEntityAsMissionEntity(ent, 1, 1)
            DeleteObject(ent)
            SetEntityAsNoLongerNeeded(ent)
        end

        Wait(5000)
    end
end)
