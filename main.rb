require "pry"
require "sinatra"

# Your routes go here:
get '/shouted-greeting/:name' do
	"HELLO, #{params['name'].upcase}!"
end

get '/shouted-greeting/howdy/:name' do
	"HOWDY, #{params['name'].upcase}!"
end

get '/shouted-greeting-b' do
	if params['greeting']
		"#{params[greeting].upcase}, #{params['name'].upcase}!"
	else
		"HELLO, #{params['name'].upcase}!"
	end
end

get '/even-or-odd/2'