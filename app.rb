require 'sinatra'

get '/' do
	erb :home
end

post '/pinchar' do
	':)'
end
