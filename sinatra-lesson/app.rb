require 'bundler'
Bundler.require

get '/python/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Python",
  methods: ["range", "len"],
  libraries: ["pandas", "numpy"],
  known: true}.to_json
end

get '/ruby/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Ruby",
  methods: ["gsub", "each"],
  libraries: ["bundler", "sinatra"],
  known: true}.to_json
end

get '/javascript/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "JavaScript",
  methods: ["forEach", "split"],
  libraries: ["node", "gulp"],
  known: true}.to_json
end

get '/c-sharp/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "C#",
  methods: ["Clone", "IndexOf"],
  libraries: ["Text", "Web"],
  known: false}.to_json
end

get '/python/view' do
  @language = {name: "Python",
  methods: ["range", "len"],
  libraries: ["pandas", "numpy"],
  known: true}
  erb :language
end

get '/ruby/view' do
  @language = {name: "Ruby",
  methods: ["gsub", "each"],
  libraries: ["bundler", "sinatra"],
  known: true}
  erb :language
end

get '/javascript/view' do
  @language = {name: "JavaScript",
  methods: ["forEach", "split"],
  libraries: ["node", "gulp"],
  known: true}
  erb :language
end

get '/c-sharp/view' do
  @language = {name: "C#",
  methods: ["Clone", "IndexOf"],
  libraries: ["Text", "Web"],
  known: false}
  erb :language
end
