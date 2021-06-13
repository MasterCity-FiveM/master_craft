fx_version 'adamant'

game 'gta5'

description 'MasterkinG32 Craft System'

version '1.0.0'

ui_page 'html/ui.html'

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'client/*.lua'
}
server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/*.lua'
}

files {
	'html/*.html',
	'html/css/*.css',
	'html/js/*.js',
}

dependency 'es_extended'
