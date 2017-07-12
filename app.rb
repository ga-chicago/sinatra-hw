require 'bundler'
Bundler.require

get '/dogs/bixby/json' do 
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Bixby", breed: "hound Mix", skill: "jumping"}.to_json
end

get '/dogs/auggie/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Auggie", breed: "Great Dane", skill: "bein' huge"}.to_json
end

get '/dogs/grizzly/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Grizzly", breed: "Pomeranian", skill: "barking"}.to_json
end

get '/dogs/minnie/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Minnie", breed: "Poodle", skill: "ruling"}.to_json
end

get '/dogs/louie/json' do
	response['Access-Control-Allow-Origin'] = '*'
	content_type :json
	{name: "Louie", breed: "Frenchie", skill: "holding on"}.to_json
end

get '/dogs/bixby/view' do
	@dog = {name: "Bixby", breed: "hound Mix", skill: "jumping"}
	erb :pups
end

get '/dogs/auggie/view' do
	@dog = {name: "Auggie", breed: "Great Dane", skill: "bein' huge"}
	erb :pups
end

get '/dogs/grizzly/view' do
	@dog = {name: "Grizzly", breed: "Pomeranian", skill: "barking"}
	erb :pups
end

get '/dogs/minnie/view' do
	@dog = {name: "Minnie", breed: "Poodle", skill: "ruling"}
	erb :pups
end

get '/dogs/louie/view' do
	@dog = {name: "Louie", breed: "Frenchie", skill: "holding on"}
	erb :pups
end






