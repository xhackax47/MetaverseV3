fx_version   'cerulean'
use_fxv2_oal 'yes'
lua54        'yes'
game         'gta5'
description 'Enc0ded\'s Persistent Vehicles Version 3.0'
version '3.0.7'

dependencies {
	'/server:5181',
	'/onesync',
}

client_scripts {
	'config.lua',
	'client/entityiter.lua',
	'client/_utils.lua',
	'client/main.lua',
}

server_scripts {
	'config.lua',
	'server/_utils.lua',
	'server/main.lua',
}

escrow_ignore {
	'config.lua',
	'README.md',
	'vehicle-data.json'
}

server_exports {
	'GetVehicleData'
}
dependency '/assetpacks'