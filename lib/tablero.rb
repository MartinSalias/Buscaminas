class Tablero
	def initialize 
        @tablero = Array.new(3) { Array.new(3) }
        @tablero[1][2] = "bomba"
        @puntaje = 0
	end
	def dimension
		@tablero[1][2]
	end

	def pinchar (x, y)
		if @tablero[x][y] == "bomba"
			@mensaje = "Booooommm jajaja"
		else
			@mensaje = "Sigue jugando :D"
            @puntaje += 1
		end
	end

	def resultado
		@mensaje
	end

    def puntaje
		@puntaje
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
