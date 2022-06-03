//3. Teniendo 2 jugadores, haz que jueguen al piedra, papel y tijera. 
//El primero que llegue a 3 puntos gana.

SubProceso numValidar <- validarEntero(numMin, numMax)
	
	definir aux,numValidar como entero;
	definir finValidacion Como Logico;
	finValidacion <- falso;
	
	Si numMin>numMax Entonces
		aux <- numMin;
		numMin <- numMax;
		numMax <- aux;
	FinSi
	
	Repetir
		
		Escribir "Escribe un numero entre " , numMin , " y "  , numMax;
		leer numValidar;
		
		Si numValidar>=numMin y numValidar<=numMax Entonces
			finValidacion <- verdadero;
		SiNo
			Escribir "Error, debes escribir un numero entre " , numMin , " y "  , numMax;
		FinSi
		
	Hasta Que finValidacion
	
FinSubProceso

Proceso Matrices_3_DDR
	
	definir PAPEL, TIJERA, PIEDRA, GANAR, EMPATE, PERDER, puntos_j1, puntos_j2, eleccion_j1, eleccion_j2, resultado como entero;
	Definir finJuego como logico;
	
	PAPEL <- 0;
	TIJERA <- 1;
	PIEDRA <- 2;
	GANAR <- 1;
	EMPATE <- 0;
	PERDER <- -1;
	
	definir tablero como entero;
	dimension tablero[3,3];
	
	tablero[0,0] <- 0;
	tablero[0,1] <- -1;
	tablero[0,2] <- 1;
	tablero[1,0] <- 1;
	tablero[1,1] <- 0;
	tablero[1,2] <- -1;
	tablero[2,0] <- -1;
	tablero[2,1] <- 1;
	tablero[2,2] <- 0;
	
	puntos_j1 <- 0;
	puntos_j2 <- 0;
	
	finJuego <- falso;
	
	Mientras no finJuego hacer
		
		escribir "Puntuacion J1: ", puntos_j1;
		escribir "Puntuacion J2: ", puntos_j2;
		
		escribir "J1: elige tu mano 0 PAPEL, 1 TIJERA, 2 PIEDRA";
		eleccion_j1 <- validarEntero(0,2);
		
		escribir "J2: elige tu mano 0 PAPEL, 1 TIJERA, 2 PIEDRA";
		eleccion_j2<- validarEntero(0,2);
		
		resultado <- tablero[eleccion_j1,eleccion_j2];
		
		Segun resultado Hacer
			1:
				puntos_j1 <- puntos_j1 +1;
				escribir "Jugador 1 gana la mano";
			-1:
				puntos_j2 <- puntos_j2 +1;
				escribir "Jugador 2 gana la mano";
			De Otro Modo:
				escribir "No gana ningun jugador";
				
		FinSegun
		
		Si puntos_j1=3 o puntos_j2=3 Entonces
			finJuego <- verdadero;
		FinSi
		
	FinMientras
	
	Escribir "Puntuacion final: ";
	escribir "Puntuacion J1: ", puntos_j1;
	escribir "Puntuacion J2: ", puntos_j2;
	
	
	Si puntos_j1 =3 Entonces
		escribir "Gana el jugador 1";
	SiNo
		escribir "Gana el jugador 2";
	FinSi
	
	
	
FinProceso
