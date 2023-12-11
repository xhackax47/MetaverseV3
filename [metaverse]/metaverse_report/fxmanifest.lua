--[[

  Made with love by Cheleber, you can join my RP Server here: www.grandtheftlusitan.com
  Works with essentialmode, es_admin and esx_identity!

--]]
fx_version 'cerulean'
games { 'gta5' }

description 'Reply and Report command'

version '1.0.0'

client_script {
  'client.lua'
}

server_scripts {
  --'@mysql-async/lib/MySQL.lua',
  '@oxmysql/lib/MySQL.lua',
  'server.lua'
}
