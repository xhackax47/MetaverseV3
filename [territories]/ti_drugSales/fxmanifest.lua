fx_version 'cerulean'
game 'gta5'

description 'TebIT - Drug Sales'
version '1.0.0'

lua54 'yes'

util_modules {
  '*'
}

shared_scripts {
  '@ti_utils/init.lua',
  
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
}

escrow_ignore {
  'data/*.lua',
}
dependency '/assetpacks'