fx_version 'adamant'
game 'gta5'

author 'Hacka47'
description 'Script général du serveur Metaverse RP'
version '1.0.0'

shared_scripts {'config.lua'}
client_scripts {
    '@es_extended/locale.lua',
    'client/cl_discord.lua', 
    'client/cl_metaverse.lua', 
    'client/cl_holster.lua', 
    'client/cl_reculs.lua', 
    'client/cl_removeentities.lua',
    'client/cl_stress.lua',
    --'client/cl_illegal.lua',
    'locales/fr.lua',
}

server_scripts {
    '@es_extended/locale.lua',
    'server/sv_metaverse.lua',
    --'server/sv_illegal.lua',
    'locales/fr.lua',
}