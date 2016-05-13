class Tablero
	def initialize 
                @tablero = Array.new(3) { Array.new(3) }
                @tablero[1][2] = "bomba"
	end
	def dimension
		@tablero[1][2]
	end

	def pinchar (x, y)
		if @tablero[x][y] == "bomba"
			@mensaje = "Booooommm jajaja"
		else
			@mensaje = "Sigue jugando :D"
		end
	end

	def resultado
		@mensaje
	end
end
