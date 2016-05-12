require_relative "../lib/tablero.rb"

describe "Estructura" do
	it "dimensiona el tablero a 3x3" do
		tablero = Tablero.new
		tablero.dimension.should == "bomba"
	end
end
