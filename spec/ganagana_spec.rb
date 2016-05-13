require_relative "../lib/tablero.rb"

describe "el jugador gana" do
	it "si pinchaste en todos los lugares sin bomba, ganaste" do
		tablero = Tablero.new
		tablero.pinchar 0, 0
		tablero.pinchar 0, 1
		tablero.pinchar 0, 2
		tablero.pinchar 1, 0
		tablero.pinchar 1, 1
		tablero.pinchar 2, 0
		tablero.pinchar 2, 1
		tablero.pinchar 2, 2
		tablero.resultado.should == "yupi!!! ganaste!"
	end
end
