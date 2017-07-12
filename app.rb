require "bundler"
Bundler.require

# json paths

get "/bread/json" do
	response["Access-Control-Allow-Origin"] = "*"
	content_type :json
	{name: "Bread", type: "carb", tasty_level: 100, description: "Bread is good for your health and general well-being. People around the world love to eat bread. Some people even eat bread with every meal! Wow"}.to_json
end

get "/wine/json" do
	response["Access-Control-Allow-Origin"] = "*"
	content_type :json
	{name: "Wine", type: "drink", tasty_level: 75, description: "Wine can help you lose weight, make friends, influence people, become the best version of yourself, and be more confident! Drink wine every day."}.to_json
end

get "/cake/json" do
	response["Access-Control-Allow-Origin"] = "*"
	content_type :json
	{name: "Cake", type: "dessert", tasty_level: 95, description: "People eat cake to celebrate major life events like birthdays and adoptions. Sometimes people even eat cake when they're sad."}.to_json
end

get "/oreo/json" do
	response["Access-Control-Allow-Origin"] = "*"
	content_type :json
	{name: "Oreo", type: "dessert", tasty_level: 100, description: "Oreos are the quintessential vegan dessert because they don't have any animal products. I wish all vegan foods were this unhealthy for you :)"}.to_json
end

get "/dog-food/json" do
	response["Access-Control-Allow-Origin"] = "*"
	content_type :json
	{name: "Dog food", type: "dessert??", tasty_level: 6, description: "People shouldn't eat dog food. Who knows what the factories put in that...!?"}.to_json
end

# erb paths

get "/bread/view" do
	@info = {name: "Bread", type: "carb", tasty_level: 100, description: "Bread is good for your health and general well-being. People around the world love to eat bread. Some people even eat bread with every meal! Wow"}
	erb :food
end

get "/wine/view" do
	@info = {name: "Wine", type: "drink", tasty_level: 75, description: "Wine can help you lose weight, make friends, influence people, become the best version of yourself, and be more confident! Drink wine every day."}
	erb :food
end

get "/cake/view" do
	@info = {name: "Cake", type: "dessert", tasty_level: 95, description: "People eat cake to celebrate major life events like birthdays and adoptions. Sometimes people even eat cake when they're sad."}
	erb :food
end

get "/oreo/view" do
	@info = {name: "Oreo", type: "dessert", tasty_level: 100, description: "Oreos are the quintessential vegan dessert because they don't have any animal products. I wish all vegan foods were this unhealthy for you :)"}
	erb :food
end

get "/dog-food/view" do
	@info = {name: "Dog food", type: "dessert??", tasty_level: 6, description: "People shouldn't eat dog food. Who knows what the factories put in that...!?"}
	erb :food
end
