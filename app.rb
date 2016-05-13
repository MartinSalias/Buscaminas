require 'sinatra'
require_relative './lib/tablero.rb'

get '/' do
	@@tablero = Tablero.new 
	@puntaje = @@tablero.puntaje
	erb :home
end

get '/testhome' do
	@@tablero = params[:tablero]
	erb :testhome
end

post '/pinchar' do
	@mensaje = @@tablero.pinchar params[:x].to_i, params[:y].to_i
	@puntaje = @@tablero.puntaje
	erb :home
end
