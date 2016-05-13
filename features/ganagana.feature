Feature: el jugador gana
Scenario: si pinchaste en todos los lugares sin bomba, ganaste
	Given El jugador ingresa al juego
    When Ingresar 0,0 como posicion
     And Ingresar 0,1 como posicion
     And Ingresar 0,2 como posicion
     And Ingresar 1,0 como posicion
     And Ingresar 1,1 como posicion
     And Ingresar 2,0 como posicion
     And Ingresar 2,1 como posicion
     And Ingresar 2,2 como posicion
	Then Debe decir "yupi"
