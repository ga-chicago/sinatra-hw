require 'bundler'
Bundler.require

get '/batman/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Batman", alignment: "Good Guy", publisher: "DC Comics", powers: ["Detective Skills", "Crazy Karate Bullshit", "So fucking rich"]}.to_json
end

get '/flash/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Flash", alignment: "Good Guy", publisher: "DC Comics", powers: ["Fast", "Like really fast", "Speedy"]}.to_json
end

get '/joker/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Joker", alignment: "Bad Guy", publisher: "DC Comics", powers: ["Hilarious jokes", "Serial killing", "Hyper-sanity"]}.to_json
end

get '/red-skull/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Red Skull", alignment: "Bad Guy", publisher: "Marvel Comics", powers: ["Super Strength", "Weird face", "Nazi stamina"]}.to_json
end

get '/batman/views' do
	@name = "Batman"
	@alignment = "Good guy"
	@publisher = "DC Comics"
	@powers = ['Detective Skills', 'Crazy Karate Bullshit', 'So fucking rich']
	erb :hero
end

get '/flash/views' do
	@name = "The Flash"
	@alignment = "Good guy"
	@publisher = "DC Comics"
	@powers = ['Run fast', 'Punch fast', 'Getting ladies']
	erb :hero
end

get '/joker/views' do
	@name = "Joker"
	@alignment = "Evil"
	@publisher = "DC Comics"
	@powers = ['Super sanity', 'Really good at escaping prison', 'Good jokes']
	erb :hero
end

get '/red-skull/views' do
	@name = "Red Skull"
	@alignment = "Evil"
	@publisher = "Marvel Comics"
	@powers = ['Super strength', 'Weird face', 'Fanatical Nazi loyalty']
	erb :hero
end
