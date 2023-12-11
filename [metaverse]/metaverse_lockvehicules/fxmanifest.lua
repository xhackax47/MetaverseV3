fx_version 'cerulean'

game 'gta5'

description 'Metaverse Lock Vehicules'
version 'Legacy'

client_scripts {
	'@es_extended/imports.lua',
    'client/*.lua',
    'config.lua'
}

server_scripts {
	'@async/async.lua',
	'@oxmysql/lib/MySQL.lua',
	--'@mysql-async/lib/MySQL.lua',
	'@es_extended/imports.lua',
    'server/*.lua',
    'config.lua'
}

dependencies {
	'es_extended'
}

exports {
	'givePlayerKeys',
	'takePlayerKeys'
}
