local QBCore = select(2, ...)
local module = {}

function module.getNameFromHash(hash)
    local unsigned = hash % 0x100000000
    local signed   = hash - 0x100000000
    
    for name in pairs(QBCore.Shared.Weapons) do
        local hash = GetHashKey(name)
        
        if hash == unsigned or hash == signed then
            return name
        end
    end

    return "UNKNOWN"
end

return module