--[[
     _____             ___      _          _   __  __           _ 
    | ____|_ __   ___ / _ \  __| | ___  __| | |  \/  | ___   __| |___ 
    |  _| | '_ \ / __| | | |/ _` |/ _ \/ _` | | |\/| |/ _ \ / _` / __|
    | |___| | | | (__| |_| | (_| |  __/ (_| | | |  | | (_) | (_| \__ \
    |_____|_| |_|\___|\___/ \__,_|\___|\__,_| |_|  |_|\___/ \__,_|___/                                                      

    https://fivem-mods.tebex.io
    https://discord.gg/rhQhZWM

    enc0ded-persistent-vehicles | Version 3

    Requires: OneSync - FXServer >= 5181
    Docs: https://github.com/enc0ded/enc0ded-persistent-vehicles-docs
    Submit Bug Report: https://discord.gg/CEKHRfBgus
    Community Support: https://discord.gg/Pvq9tjpWeR
    Developer Support: https://fivem-mods.tebex.io/category/support
]]

-- Why am I seeing duplicated vehicles spawning?
  -- 1. You may have registered a vehicle as persistent and then changed its plate from a database with SetVehicleNumberPlateText(vehicle). 
  --    This mod uses the vehicle plate to know if it exists on the server so you should set the plate then register as persistent.
  -- 2. You are not ensuring all vehicles on the server have unqiue plate numbers.

Config = {

  -- enable debugging to see server console messages; can be toggled with server command: pv-toggle-debugging
  debug = false,

  -- repopulate the map with vehicles that were lost when the server rebooted
  populateOnReboot = true,

  -- automatically save vehicle data before server restart
  restart = {
    
    -- save vehicle data on txAdmin scheduled restart | set to false if using times from below
    txadmin = true,

    --[[ For servers that DO NOT use txAdmin scheduled restarts, you can use the following: ]]

    -- GMT timezone offset of your servers clock | Remember to consider daylight saving time; for example British Summer Time (BST) is GMT +1
    GMTOffset = 1,

    -- set scheduled restarts times in 24 hours clock format | Note: "00:00" = "24:00"
    times = {
      [1] = '05:00',
      [2] = '17:00',
      --[3] = '06:30',
    },
  },

  -- use LegacyFuel mod fuel gauge https://github.com/InZidiuZ/LegacyFuel
  legacyFuel = true,

  --[[ Advanced settings | Do not change unless you know what you are doing ]]

  -- don't respawn a vehicle that's been destroyed
  forgetOnDestroyed = true,

  -- how close a player needs to get to a deleted persistent vehicle before it is respawned
  respawnDistance = 300, -- 300+

  -- time in ms that the server waits before it attempts to spawn vehicles and updates their properties/coords.
  serverTickTime = 2000, -- anything lower than 1000 will cause unnecessary server load. Anything higher than 4000 may cause vehicle popping depending on "respawnDistance"

}