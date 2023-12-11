local function drawText(x, y, width, height, scale, r, g, b, a, centre, right, text)
    -- Use local function instead
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextCentre(centre)
    SetTextRightJustify(right)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry('STRING')
    AddTextComponentString(text)
    DrawText(x - width / 2, y - height / 2 + 0.005)
end

local hud = {}

function hud.render(t,d)
    local cfg = config.hud

    local text = t.label

    if cfg.showController then
        text = text .. "\n" .. labels.controller .. ": " .. d.controller:upper()
    end

    if cfg.showReputation then
        text = text .. "\n" .. labels.reputation .. ": " .. ("%.2f"):format(d.reputation)
    end

    if cfg.showSeizedAt then
        text = text .. "\n" .. labels.seized_at .. ": " .. d.seizedAtS
    end

    if cfg.showLastLogin then
        text = text .. "\n" .. labels.last_login .. ": " .. d.lastLoginS
    end

    drawText(
        cfg.x,
        cfg.y,
        cfg.width,
        cfg.height,
        cfg.scale,
        cfg.r,
        cfg.g,
        cfg.b,
        cfg.a,
        cfg.centre,
        cfg.right,
        text
    )
end

_ENV.hud = hud