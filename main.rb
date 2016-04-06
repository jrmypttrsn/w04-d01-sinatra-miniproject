# require "pry"
require "sinatra"

# Your routes go here:
get '/shouted-greeting/:name' do
	@name = params['name']
	erb :shouted_greeting
end

get '/shouted-greeting/howdy/:name' do
	@name = params['name']
	erb :shouted_greeting_howdy
end

get '/shouted-greeting-b' do
	@greeting = params['greeting'].upcase
	@name = params['name'].upcase
	erb :shouted_greeting_b
end

get '/even-or-odd/:input' do
  @input = params['input'].to_i
  erb :even_or_odd
end

get '/glen' do
  erb :glen_form
end

get '/glen/result' do
  @name = params['name']
  @love = params['love']
  @glen_campbell_love = ""

  if params["glen_campbell_love"] == "lots"
    @glen_campbell_love = "Who doesn't need Glen Campbell?!"
  elsif params["glen_campbell_love"] == "all"
    @glen_campbell_love = "Everyone wants Glen Campbell. Get in line."
  end

  erb :glen_result
end