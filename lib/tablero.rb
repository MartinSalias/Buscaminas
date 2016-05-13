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
end
