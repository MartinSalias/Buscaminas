class Tablero
	def initialize 
                @tablero = Array.new(3) { Array.new(3) }
                @tablero[1][3] = "bomba"
	end
	def dimension
		@tablero[1][3]
	end

	def dibuja
		return '<table width="50%" height="50%" border="1">
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
end
