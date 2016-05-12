require 'sinatra'

get '/' do
	erb :home
end

get '/pinchar' do
	':)'
end
