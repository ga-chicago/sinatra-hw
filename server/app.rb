require 'bundler'
Bundler.require

get '/' do 

	"it works!"
	
	
end

get '/lakers/json' do
		 response['Access-Control-Allow-Origin'] = '*'
  		content_type :json
		@team = {name: "Lakers", players:["Lonzo Ball", "Corey Brewer", "Thomas Bryant", "Jordan Clarkson", "Brandon Ingram"]}.to_json
end

get '/suns/json' do
	 response['Access-Control-Allow-Origin'] = '*'
  		content_type :json
	@team = {name: "Suns", players:["Leandro Barbosa", "Dragan Bender", "Eric Bledsoe", "Devin Booker", "Tyson Chandler"]}.to_json
	
end
get '/warriors/json' do
	 response['Access-Control-Allow-Origin'] = '*'
  		content_type :json
	@team = {name: "Warriors", players:["Poop", "Clown", "Bandwagon", "Chump", "Stain"]}.to_json
	
end
get '/clippers/json' do
	 response['Access-Control-Allow-Origin'] = '*'
  		content_type :json
	@team = {name: "Clippers", players:["Patrick Beverley", "Alan Anderson", "Sam Dekker", "Blake Griffin", "Danilo Gallinari"]}.to_json
	
end

get '/lakers/view' do
	@team = {name: "Lakers", players:["Lonzo Ball", "Corey Brewer", "Thomas Bryant", "Jordan Clarkson", "Brandon Ingram"]}
	erb :teams
end
get '/suns/view' do
	@team = {name: "Suns", players:["Leandro Barbosa", "Dragan Bender", "Eric Bledsoe", "Devin Booker", "Tyson Chandler"]}
	erb :teams
end
get '/warriors/view' do
	@team = {name: "Warriors", players:["Poop", "Clown", "Bandwagon", "Chump", "Stain"]}
	erb :teams
end
get '/clippers/view' do
	@team = {name: "Clippers", players:["Patrick Beverley", "Alan Anderson", "Sam Dekker", "Blake Griffin", "Danilo Gallinari"]}
	erb :teams
end