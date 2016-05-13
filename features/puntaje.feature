Feature: Mostrar el puntaje en el tablero
Scenario: Cuando el usuario sigue sumando puntos
	Given El jugador ingresa al juego
	When Ingresar 2,1 como posicion
	 And Ingresar 1,1 como posicion
	 And Ingresar 0,1 como posicion
	 And Ingresar 0,0 como posicion
	Then Debe verse una carita feliz ":D"
	 And Debe verse el puntaje "4"

	Given El jugador ingresa al juego
	When Ingresar 1,1 como posicion
	 And Ingresar 1,1 como posicion
	Then Debe verse una carita feliz "selecciono"
	And Debe verse el puntaje "1"

	Given El jugador ingresa al juego
	When Ingresar 1,1 como posicion
	Then la celda "1,1" debe mostrar "0"
