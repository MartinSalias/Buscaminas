require 'sinatra'

get '/' do
	erb :home
end

get '/testhome' do
	@tablero = params[:tablero]
	erb :testhome
end

post '/pinchar' do
	':)'
end
