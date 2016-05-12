class Tablero
	def initialize 
                @tablero = Array.new(3) { Array.new(3) }
                @tablero[1][3] = "bomba"
	end
	def dimension
		@tablero[1][3]
	end
end
