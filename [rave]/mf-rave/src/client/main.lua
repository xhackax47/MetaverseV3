Rave        = {}
Rave.Zones  = {}
Rave.FX     = {}

Rave.ConstructPolyzone = function(zone)
  return PolyZone:Create(zone.points,{
    name        = zone.name,
    minZ        = zone.minZ,
    maxZ        = zone.maxZ,
    debugGrid   = Config.Debug,
    debugPoly   = Config.Debug,
    debugColors = {
      walls   = {255,0,0},
      outline = {255,0,0},
      grid    = {255,255,255}
    },
  })
end

Rave.Init = function()
  SetNuiFocus(false,false)

  for k,v in ipairs(Config.Zones) do
    table.insert(Rave.Zones,{
      index = k,
      zone  = Rave.ConstructPolyzone(v)
    })
  end

  while not Rave.UiReady do
    SendNUIMessage({
      type = "Config",
      data = {
        res         = GetCurrentResourceName(),
        timecycles  = Config.Timecycles,
        camshakes   = Config.CamShakes
      }
    })
    Wait(500)
  end

  Rave.SetupInterior()

  Rave.Update()
end

Rave.Update = function()
  while true do
    local ped       = GetPlayerPed(-1)
    local pos       = GetEntityCoords(ped)
    local closest   = Rave.GetClosest(pos)
    local wait_time = 0

    if closest then
      if not Rave.Inside then
        if not Rave.Entering then
          Rave.Enter(closest)
        end
      elseif Rave.Inside ~= closest then
        Rave.Exit()
      else
        Rave.DoFX(pos)

        if IsControlJustPressed(0,38) then
          Rave.OpenController()
        end

        if IsControlJustPressed(0,47) then
          Rave.OpenDj()
        end
      end
    else
      if Rave.Inside then
        Rave.Exit()
      end
      wait_time = 500
    end

    Wait(wait_time)
  end
end

Rave.GetClosest = function(pos)
  for k,v in ipairs(Rave.Zones) do
    if v.zone:isPointInside(pos) then
      return v.index
    end
  end
  return false
end

Rave.Enter = function(index)
  Rave.Entering = true
  TriggerServerEvent("Rave:Get",index,GetGameTimer())
end

Rave.Got = function(index,rave,offset,wave,duration) 
  if rave.song and not wave then
    TriggerEvent("Wave:Get",rave.song,true,100000,function(wav,dur)
      Rave.Got(index,rave,offset,wav,dur)
      Rave.Music = true
    end,{
      start   = ((GetGameTimer() - rave.started + offset) / 1000),
      volume  = rave.volume
    })
  else
    local preset = Config.Zones[index].opts

    Rave.Cubes = {}

    if preset.timecycle then
      SetTimecycleModifierStrength(preset.timecycle_strength) 
      SetTimecycleModifier(preset.timecycle)
    end

    if preset.secondary_timecycle then
      SetExtraTimecycleModifierStrength(preset.secondary_timecycle_strength) 
      SetExtraTimecycleModifier(preset.secondary_timecycle)
    end

    if preset.cam_shake then
      ShakeGameplayCam(preset.cam_shake, preset.cam_shake_strength)
    end

    if preset.motion_blur then
      SetPedMotionBlur(GetPlayerPed(-1),true)
    end

    if preset.draw_cubes then
      for i=1,preset.draw_cubes,1 do
        local r = math.random(5,255)
        local g = math.random(5,255)
        local b = math.random(5,255)
        local a = math.random(40,50)

        local x = math.random(1,180)
        local y = math.random(1,359)
        local z = math.random(15,35)

        table.insert(Rave.Cubes,{pos=PointOnSphere(x,y,z),points={x=x,y=y,z=z},col={r=r, g=g, b=b, a=a},mod = math.random(10.0,15.0)})
      end  
    end

    if wave then
      Rave.Wave = {
        wave      = wave,
        duration  = duration,
        durations = (#wave / duration),
        start     = rave.started
      }
    end

    Rave.Inside   = index
    Rave.Entering = false
  end
end

Rave.Exit = function()
  local preset = Config.Zones[Rave.Inside].opts

  Rave.Cubes = false

  SetTimecycleModifierStrength(0.0) 
  SetExtraTimecycleModifierStrength(0.0) 

  if preset.cam_shake then
    ShakeGameplayCam(preset.cam_shake, 0.0)
  else
    ShakeGameplayCam('DRUNK_SHAKE',0.0)
  end

  SetPedMotionBlur(GetPlayerPed(-1),false)
  TriggerEvent("Wave:Stop",true)

  Rave.Wave   = false
  Rave.Inside = false
end

Rave.DoFX = function(pos)
  local preset = Config.Zones[Rave.Inside].opts
  local wave_target = false

  if Rave.Wave then
    local durations   = Rave.Wave.durations
    local start_time  = Rave.Wave.start
    local wave        = Rave.Wave.wave
    local now         = GetGameTimer()
    local since       = (now - start_time) / 1000
    local target      = math.max(1,math.min(#wave,math.floor(since * durations)))
    wave_target = wave[target]
  end

  if Rave.Cubes and preset.draw_cubes then
    for k=1,math.min(#Rave.Cubes,preset.draw_cubes),1 do
      local v = Rave.Cubes[k]

      local addX = 0.1
      local addY = 0.1
      if k%4 == 0 then
        addY = -0.2
      elseif k%3 == 0 then
        addX = -0.2
      elseif k%2 == 0 then
        addX = -0.1
        addY = -0.1
      end

      local r,g,b 
      if wave_target then
        r = math.min(255,math.max(50,math.floor(v.col.r*wave_target*10.0)))
        g = math.min(255,math.max(50,math.floor(v.col.g*wave_target*10.0)))
        b = math.min(255,math.max(50,math.floor(v.col.b*wave_target*10.0)))
        Rave.Wave.target = wave_target
      else
        r = v.col.r
        g = v.col.g
        b = v.col.b
      end

      local p       = pos + v.pos
      local points  = {x=v.points.x+addX,y=v.points.y+addY,z=v.points.z}

      DrawBox(p.x+v.mod,p.y+v.mod,p.z+v.mod,p.x-v.mod,p.y-v.mod,p.z-v.mod, r,g,b,v.col.a)

      Rave.Cubes[k].points  = points
      Rave.Cubes[k].pos     = PointOnSphere(points.x,points.y,points.z)
    end
  end

  if preset.timecycle and wave_target then
    SetTimecycleModifierStrength(math.max(preset.timecycle_strength*0.5,math.min(preset.timecycle_strength,math.abs(wave_target)*10.0))) 
  end

  if preset.secondary_timecycle and wave_target then
    SetExtraTimecycleModifierStrength(math.max(preset.secondary_timecycle_strength*0.5,math.min(preset.secondary_timecycle_strength,math.abs(wave_target)*10.0)))
  end
end

Rave.SetupInterior = function()
  local AfterHoursNightclubs = exports['bob74_ipl']:GetAfterHoursNightclubsObject()

  AfterHoursNightclubs.Ipl.Interior.Load()
  
  AfterHoursNightclubs.Interior.Name.Set(AfterHoursNightclubs.Interior.Name.studio, true)
  AfterHoursNightclubs.Interior.Style.Set(AfterHoursNightclubs.Interior.Style.glam, true)
  AfterHoursNightclubs.Interior.Podium.Set(AfterHoursNightclubs.Interior.Podium.glam, true)
  AfterHoursNightclubs.Interior.Speakers.Set(AfterHoursNightclubs.Interior.Speakers.upgrade, true)
  AfterHoursNightclubs.Interior.Security.Set(AfterHoursNightclubs.Interior.Security.on, true)
  AfterHoursNightclubs.Interior.Turntables.Set(AfterHoursNightclubs.Interior.Turntables.style03, true)

  AfterHoursNightclubs.Interior.Lights.Lasers.Set(AfterHoursNightclubs.Interior.Lights.Lasers.cyan, true)
  AfterHoursNightclubs.Interior.Lights.Lasers.Set(AfterHoursNightclubs.Interior.Lights.Lasers.yellow, true)
  AfterHoursNightclubs.Interior.Lights.Lasers.Set(AfterHoursNightclubs.Interior.Lights.Lasers.purple, true)
  AfterHoursNightclubs.Interior.Lights.Lasers.Set(AfterHoursNightclubs.Interior.Lights.Lasers.green, true)

  AfterHoursNightclubs.Interior.Lights.Bands.Set(AfterHoursNightclubs.Interior.Lights.Bands.white, true)
  AfterHoursNightclubs.Interior.Lights.Bands.Set(AfterHoursNightclubs.Interior.Lights.Bands.green, true)
  AfterHoursNightclubs.Interior.Lights.Bands.Set(AfterHoursNightclubs.Interior.Lights.Bands.yellow, true)

  AfterHoursNightclubs.Interior.Lights.Neons.Set(AfterHoursNightclubs.Interior.Lights.Neons.yellow, true)
  AfterHoursNightclubs.Interior.Lights.Neons.Set(AfterHoursNightclubs.Interior.Lights.Neons.purple, true)

  AfterHoursNightclubs.Interior.Lights.Droplets.Set(AfterHoursNightclubs.Interior.Lights.Droplets.green, true)
  AfterHoursNightclubs.Interior.Lights.Droplets.Set(AfterHoursNightclubs.Interior.Lights.Droplets.purple, true)
  AfterHoursNightclubs.Interior.Lights.Droplets.Set(AfterHoursNightclubs.Interior.Lights.Droplets.yellow, true)

  AfterHoursNightclubs.Interior.Details.Enable(AfterHoursNightclubs.Interior.Details.truck, true)
  AfterHoursNightclubs.Interior.Details.Enable(AfterHoursNightclubs.Interior.Details.dryIce, true)
  
  AfterHoursNightclubs.Interior.Bar.Enable(true)

  AfterHoursNightclubs.Interior.Booze.Enable(AfterHoursNightclubs.Interior.Booze, true)

  AfterHoursNightclubs.Interior.Trophy.Enable(AfterHoursNightclubs.Interior.Trophy.dancer, true, AfterHoursNightclubs.Interior.Trophy.Color.gold)
  
  RefreshInterior(AfterHoursNightclubs.interiorId)

  AfterHoursNightclubs.Mesa.Barrier.Enable(true)
  AfterHoursNightclubs.Mesa.Posters.Enable(AfterHoursNightclubs.Posters.forSale, true)
  AfterHoursNightclubs.Mesa.Barrier.Enable(true)
  AfterHoursNightclubs.Mesa.Posters.Enable({AfterHoursNightclubs.Posters.dixon, AfterHoursNightclubs.Posters.madonna}, true)
end

Rave.OpenController = function()
  SendNUIMessage({
    type = "OpenController",
    data = Config.Zones[Rave.Inside].opts
  })
  SetNuiFocus(true,true)
end

Rave.OpenDj = function()
  SendNUIMessage({
    type = "OpenDj",
    data = Config.Zones[Rave.Inside].opts
  })
  SetNuiFocus(true,true)
end

RegisterNUICallback('close',function()
  SetNuiFocus(false,false)
end)

RegisterNUICallback('ready',function()
  Rave.UiReady = true
end)

RegisterNUICallback('save',function(data)
  TriggerServerEvent("Rave:Save",Rave.Inside,data)
  SetNuiFocus(false,false)
end)

RegisterNUICallback('submit',function(data)
  data.started = GetGameTimer()
  TriggerServerEvent("Rave:Submit",Rave.Inside,data)
end)

Rave.Submitted = function(index)
  if Rave.Inside and Rave.Inside == index then
    Rave.Enter(index)
  end
end

Rave.Saved = function(index,data)
  for k,v in pairs(data) do
    Config.Zones[index].opts[k] = v
  end
  if Rave.Inside and Rave.Inside == index then
    Rave.Enter(index)
  end
end

RegisterNetEvent("Rave:Submitted")
AddEventHandler("Rave:Submitted",Rave.Submitted)

RegisterNetEvent("Rave:Saved")
AddEventHandler("Rave:Saved",Rave.Saved)

RegisterNetEvent("Rave:Got")
AddEventHandler("Rave:Got",Rave.Got)

Citizen.CreateThread(Rave.Init)