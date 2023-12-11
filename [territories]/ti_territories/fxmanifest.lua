fx_version 'bodacious'
game 'gta5'

description 'TebIT - Territories'
version '1.0.0'

lua54 'yes'

util_modules {
  'players',
  'notifications',
  'polyZones',
  'streaming',
  'callbacks',
  'blips',
  'points',
  'menus',
  'inventory',
  'locales'
}

shared_scripts {
  '@ti_utils/init.lua',
  
  'config.lua',
  'labels.lua',
  'data/*.lua',
}

client_scripts {
  'client/*.lua',
}

server_scripts {
  'server/*.lua',
}

dependencies {
  'ti_utils',
  'baseevents'
}

escrow_ignore {
  'data/*.lua',
  'config.lua',
  'labels.lua',
  'client/hud.lua',
}
dependency '/assetpacks'