require 'bundler'
Bundler.require

get '/lion/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Lion", actors:["Dev Patel", "Nicole Kidman", "Saroo Brierley"]}.to_json
end

get '/hitch/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Hitch", actors:["Will Smith", "Eva Mendes", "Kevin James"]}.to_json
end

get '/aladdin/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Aladdin", actors:["Robin Williams", "Jonathan Freeman", "Scott Weinger"]}.to_json
end

get '/lion/view' do
	@movie = {name: "Lion", actors: ["Dev Patel", "Nicole Kidman", "Saroo Brierley"]}
	erb: movie
end

get '/hitch/view' do
	@movie = {name: "Hitch", actors:["Will Smith", "Eva Mendes", "Kevin James"]}
	erb: movie
end

get '/aladdin/view' do
	@movie = {name: "Aladdin", actors:["Robin Williams", "Jonathan Freeman", "Scott Weinger"]}
	erb: movie
end