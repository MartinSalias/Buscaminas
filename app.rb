require 'sinatra'
require_relative './lib/tablero.rb'

get '/' do
	erb :home
end


post '/pinchaaar' do
	x = params[x]
	y = params[y]
	tablero = Tablero.new
	tablero.pinchar x, y
	@mensaje = "jojoj"
	erb :resultado
end

get '/testhome' do
	@tablero = params[:tablero]
	erb :testhome
end

post '/pinchar' do
	tablero = Tablero.new
	@mensaje = tablero.pinchar params[:x].to_i, params[:y].to_i
	erb :resultado
end
