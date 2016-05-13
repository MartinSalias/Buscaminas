require_relative "../lib/tablero.rb"

describe "Estructura" do
	it "dimensiona el tablero a 3x3" do
		tablero = Tablero.new
		tablero.dimension.should == "bomba"
	end

	it "spike imprimir tablero" do
		tablero = Tablero.new
		tablero.dibuja.should== '<table width="50%" height="50%" border="1">
				<tr>
					<td></td>
					<td>&nbsp</td>
					<td>&nbsp</td>
				</tr>
				<tr>
					<td>&nbsp</td>
					<td>&nbsp</td>
					<td>&nbsp</td>
				</tr>
				<tr>
					<td>&nbsp</td>
					<td>&nbsp</td>
					<td>&nbsp</td>
				</tr>
			</table>'
	end

	it "inicializa tablero" do
		tablero = Tablero.new
		tablero.get(0, 0).should==" " 	
	end
	
end


