class Tablero
	def initialize 
        @tablero = Array.new(3) { Array.new(3) }
		inicializa
		
        @tablero[1][2] = "b"
        @puntaje = 0
	end

	def get x, y
		@tablero[x][y] 
	end
	
	def inicializa
		for i in 0..2
   			for j in 0..2
				@tablero[i][j]="&nbsp;"
			end
   		end
 
	end
	
	def dimension
		@tablero[1][2]
	end

	def pinchar (x, y)
		if @tablero[x][y] == "b"
			@mensaje = "Booooommm jajaja"
		else 
			if (@tablero[x][y] == "0")
				@mensaje= "ya selecciono esta posicion"
			
			else 
			@puntaje += 1
			@tablero[x][y] = "0"
			@mensaje = "Sigue jugando :D"
			end       
		end

		
	end

	def resultado
		@mensaje
	end

    def puntaje
		@puntaje
    end
	def dibuja
		html=  '<table width="50%" height="50%" border="1" cellpadding="1" cellspacing="1">'

				for i in 0..2
					html = html + '<tr>'
   					for j in 0..2
						if(i==1 and j==2)
						html = html + '<td id="'+i.to_s+','+j.to_s+'" style="color:white">'+@tablero[i][j] +'</td>'
						else 
							html = html + '<td id="'+i.to_s+','+j.to_s+'">'+@tablero[i][j] +'</td>'
						end
					end
					html = html + '/<tr>' 
   				end
				
		html = html + '</table>'	
	end
end
