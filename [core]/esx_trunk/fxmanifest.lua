fx_version 'cerulean'
game 'gta5'

description 'ESX trunk inventory'

version '2.1.0'

server_scripts {
  '@async/async.lua',
  '@oxmysql/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'locales/fr.lua',
  'config.lua',
  'server/classes/c_trunk.lua',
  'server/trunk.lua',
  'server/esx_trunk-sv.lua'
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/fr.lua',
  'config.lua',
  'client/esx_trunk-cl.lua'
}
