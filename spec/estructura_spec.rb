require_relative "../lib/tablero.rb"

describe "Estructura" do
	it "dimensiona el tablero a 3x3" do
		tablero = Tablero.new
		tablero.dimension.should == "b"
	end

	
	it "inicializa tablero" do
		tablero = Tablero.new
		tablero.get(0, 0).should==" " 	
	end

	it "cambia valor al pinchar" do
		tablero = Tablero.new
		tablero.pinchar 0,0
		tablero.get(0, 0).should=="0" 	
	end

	it "verifica jugada repetida" do
	
		tablero = Tablero.new
		tablero.pinchar 0,0
		tablero.pinchar(0,0).should=="ya selecciono esta posicion"
		
	end
	
end


