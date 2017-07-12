require "bundler"
Bundler.require

get "/bread/json" do
	response["Access-Control-Allow-Origin"] = "*"
	content_type :json
	{name: "bread", type: "carb", tasty_level: 100, description: "Bread is good for your health and general well-being. People around the world love to eat bread. Some people even eat bread with every meal! Wow"}.to_json
end

get "/wine/json" do
	response["Access-Control-Allow-Origin"] = "*"
	content_type :json
	{name: "wine", type: "drink", tasty_level: 75, description: "Wine can help you lose weight, make friends, influence people, become the best version of yourself, and be more confident! Drink wine every day."}.to_json
end

get "/cake/json" do
	response["Access-Control-Allow-Origin"] = "*"
	content_type :json
	{name: "bread", type: "carb", tasty_level: 100, description: "Bread is good for your health and general well-being. People around the world love to eat bread. Some people even eat bread with every meal! Wow"}.to_json
end

get "/oreo/json" do
	response["Access-Control-Allow-Origin"] = "*"
	content_type :json
	{name: "bread", type: "carb", tasty_level: 100, description: "Bread is good for your health and general well-being. People around the world love to eat bread. Some people even eat bread with every meal! Wow"}.to_json
end

get "/dog-food/json" do
	response["Access-Control-Allow-Origin"] = "*"
	content_type :json
	{name: "bread", type: "carb", tasty_level: 100, description: "Bread is good for your health and general well-being. People around the world love to eat bread. Some people even eat bread with every meal! Wow"}.to_json
end