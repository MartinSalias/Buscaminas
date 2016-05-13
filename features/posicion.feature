Feature: Control de posicion
Scenario: Si le diste a la bomba booooommmm
        Given El jugador ingresa al juego
        When Ingresar 1,2 como posicion
         And presionar "Pinchar"
        Then Debe decir "Booooommm"


Scenario: Si no le diste a la bomba aparece una carita feliz ":D"
	Given El jugador ingresa al juego
	When Ingresar 2,1 como posicion
	 And presionar "Pinchar"
	Then Debe verse una carita feliz ":D"
