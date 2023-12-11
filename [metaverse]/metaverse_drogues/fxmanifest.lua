fx_version 'adamant'
game 'gta5'

description 'Metaverse Drogues'

version '2.0.0'

server_scripts {
	--'@mysql-async/lib/MySQL.lua',
	'@oxmysql/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'@es_extended/imports.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/fr.lua',
	'config.lua',
	'server/main.lua',
	'server/coke.lua',
	'server/lsd.lua',
	'server/meth.lua',
	'server/weed.lua',
	'server/heroin.lua',
	'server/chemicals.lua',
	'server/lisenceshop.lua',
	'server/moneywash.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'@es_extended/imports.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/fr.lua',
	'config.lua',
	'client/main.lua',
	'client/weed.lua',
	'client/meth.lua',
	'client/coke.lua',
	'client/lsd.lua',
	'client/heroin.lua',
	'client/chemicals.lua',
	'client/hydrochloricacid.lua',
	'client/sodiumhydroxide.lua',
	'client/sulfuricacid.lua',
	'client/lisenceshop.lua',
	'client/moneywash.lua',
}

shared_script '@es_extended/imports.lua'

dependencies {
	'es_extended'
}
