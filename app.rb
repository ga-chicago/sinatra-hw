require 'bundler'
Bundler.require

get '/swift/json' do
	response['Access-Control-Allow-Origin'] = '*'
  	content_type :json
	{name: "iOS Swift", requirements: ["Swift", "XCode", "iOS", "Core Data", "iOS Sockets"], companies_using: ["apple", "zillow", "lyft"]}.to_json
end

get '/ruby/json' do
	response['Access-Control-Allow-Origin'] = '*'
  	content_type :json
	{name: "Ruby on Rails", requirements: ["Ruby", "Rails", "RSpec", "Capybara", "PostGRESQL"], companies_using: ["groupon", "twitter", "hulu"]}.to_json
end

get '/python/json' do
	response['Access-Control-Allow-Origin'] = '*'
  	content_type :json
	{name: "Python", requirements: ["Python", "MySQL", "Flask", "AJAX", "Django"], companies_using: ["reddit", "instagram", "venmo"]}.to_json
end

get '/mean/json' do
	response['Access-Control-Allow-Origin'] = '*'
  	content_type :json
	{name: "Mean", requirements: ["JavaScript", "MongoDB", "Angular", "Node.js", "Express.js"], companies_using: ["google", "paypal", "netflix"]}.to_json
end

get '/cnet/json' do
	response['Access-Control-Allow-Origin'] = '*'
  	content_type :json
	{name: 'C#/.Net Core', requirements: ['C#', "NancyFX", "ASP.net Core", "Razor", "Entity Framework Core"], companies_using: ["microsoft", "starbucks", "stackoverflow"]}.to_json
end

get '/java/json' do
	response['Access-Control-Allow-Origin'] = '*'
  	content_type :json
	{name: "Java", requirements: ["Spring Boot", "Thymeleaf", "JPA", "JUnit"], companies_using: ["fitbit", "linkedin", "tmobile"]}.to_json
end

# get '/swift' do
# 	@name = "iOS Swift"
# 	@requirements = ["Swift", "XCode", "iOS", "Core Data", "iOS Sockets"]
# 	@companies_using = ["apple", "zillow", "lyft"]
# 	erb :home
# end

# get '/ruby' do
# 	@name = "Ruby on Rail"
# 	@requirements = ["Ruby", "Rails", "RSpec", "Capybara", "PostGRESQL"]
# 	@companies_using = ["groupon", "twitter", "hulu"]
# 	erb :home
# end

# get '/mean' do
# 	@name = "Mean"
# 	@requirements = ["JavaScript", "MongoDB", "Angular", "Node.js", "Express.js"]
# 	@companies_using = ["google", "paypal", "netflix"]
# 	erb :home
# end

# get '/python' do
# 	@name = "Python"
# 	@requirements = ["Python", "MySQL", "Flask", "AJAX", "Django"]
# 	@companies_using = ["reddit", "instagram", "venmo"]
# 	erb :home
# end

# get '/cnet' do
# 	@name = 'C#/.Net Core'
# 	@requirements = ['C#', "NancyFX", "ASP.net Core", "Razor", "Entity Framework Core"]
# 	@companies_using = ["microsoft", "starbucks", "stackoverflow"]
# 	erb :home
# end

# get '/java' do
# 	@name = "Java" 
# 	@requirements = ["Spring Boot", "Thymeleaf", "JPA", "JUnit"]
# 	@companies_using = ["fitbit", "linkedin", "tmobile"]
# 	erb :home
# end
