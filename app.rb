require 'bundler'
Bundler.require

get '/radiohead/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Radiohead", albums: ["Pablo Honey", "The Bends", "OK Computer", "Kid A", "Amnesiac", "Hail To The Thief", "In Rainbows", "King of Limbs", "A Moon Shaped Pool"]}


get '/radiohead/view' do 

	@name = "Radiohead"
	@albums = ["Pablo Honey", "The Bends", "OK Computer", "Kid A", "Amnesiac", "Hail To The Thief", "In Rainbows", "King of Limbs", "A Moon Shaped Pool"]
	erb :home
end

get '/arcadefire/view' do

	@name = "Arcade Fire"
	@albums = ["Funeral", "Neon Bible", "The Suburbs", "Reflektor"]
	erb :home
end

get '/angelolsen/view' do

	@name = "Angel Olsen"
	@albums = ["Strange Cacti", "Half Way Home", "Burn Your Fire", "My Woman"]
	erb :home
end

get '/bss/view' do

	@name = "Broken Social Scene"
	@albums = ["Feel Good Lost", "You Forgot It In People", "Bee Hives", "Broken Social Scene", "Forgiveness Rock Record", "Hug of Thunder"]
	erb :home
end

get '/tameimpala/view' do

	@name = "Tame Impala"
	@albums = ["Inner Speaker", "Lonerism", "Currents"]
	erb :home
end