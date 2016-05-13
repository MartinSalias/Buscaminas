require_relative "../lib/tablero.rb"

describe "Control de posicion" do
	it "si no pinchaste la bomba sigue jugando" do
		tablero = Tablero.new
		tablero.pinchar 0, 0
		tablero.resultado.include? "Sigue jugando"
	end
end
