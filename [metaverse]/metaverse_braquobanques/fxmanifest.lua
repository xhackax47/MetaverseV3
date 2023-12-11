

fx_version 'cerulean'
games {'gta5'}

description 'Bank Robbery'
version '1.0.1'

client_scripts {
	'language.lua',
	'config.lua',
	'client/main.lua',
	'client/drilling.lua',
	'client/safecrack.lua',
	'client/utils.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	--'@mysql-async/lib/MySQL.lua',
	'language.lua',
	'config.lua',
	'server/main.lua'
}