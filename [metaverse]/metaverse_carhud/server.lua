RegisterServerEvent("metaverse_carhud:syncIndicators", function(vehNetId, indicatorState)
    TriggerClientEvent("metaverse_carhud:syncIndicators", -1, vehNetId, indicatorState)
end)