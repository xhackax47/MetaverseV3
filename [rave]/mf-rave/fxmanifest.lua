fx_version 'bodacious'
games { 'rdr3', 'gta5' }

ui_page 'nui/index.html'

client_scripts {
  '@PolyZone/client.lua',

  'config.lua',
  'src/client/main.lua',
  'src/client/functions.lua',
}

server_scripts {
  'config.lua',
  'src/server/main.lua',
  'src/server/functions.lua',
}

files {
  'nui/index.html',
}

dependencies {
  'PolyZone',
  'fivem-getwave',
  'bob74_ipl'
}
