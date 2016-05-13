Feature: Ingreso de Datos
Scenario: se debe poder ingresar datos y presionar Pinchar
	Given El jugador ingresa al juego
	When Ingresar 2,2 como posicion 
	 And presionar "Pinchar"
	Then Debe verse una carita feliz ":D"


