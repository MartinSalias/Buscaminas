require_relative "../lib/tablero.rb"

describe "Puntaje" do
	it "debe mostrar el puntaje" do
		tablero = Tablero.new
		tablero.pinchar 0, 0
		tablero.pinchar 1, 0
		tablero.pinchar 1, 1
		tablero.pinchar 2, 0
		tablero.pinchar 2, 1
		tablero.pinchar 2, 2
		tablero.puntaje.should == 6
	end
end
