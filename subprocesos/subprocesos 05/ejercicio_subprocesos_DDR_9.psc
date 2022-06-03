

//Pide un numero al usuario
Funcion numeroUsuario <- leerNumero ()
	
	Repetir
		
		Escribir "Dame un numero entre 1 y 100"
		leer numeroUsuario
		
	Hasta Que numeroUsuario>=1 Y numeroUsuario<=100
	
Fin Funcion

//Comprueba el numero y devuelve un codigo
//0: los dos numeros son iguales
//1: el numeroUsuario es mayor que el numeroCorrecto
//-1: el numeroUsuario es menor que el numeroCorrecto
Funcion codigo <- comprobarNumero ( numeroCorrecto, numeroUsuario )
	
	Si numeroUsuario = numeroCorrecto Entonces
		codigo <- 0
	Sino
		Si numeroUsuario < numeroCorrecto Entonces
			codigo <- -1
		Sino
			codigo <- 1
		Fin Si
	Fin Si
	
Fin Funcion

Algoritmo Ejercicio_DDR_subprocesos_9
	
	numeroCorrecto <- 43
	
	salir <- Falso
	
	//Hasta que no acierte no salimos
	Mientras no salir Hacer
		
		//leer el numero del usuario
		numeroUsuario <- leerNumero()
		
		//Comprobar el numero del usuario
		Segun comprobarNumero(numeroCorrecto, numeroUsuario) Hacer
			0:
				//Salimos
				Escribir "Has acertado, felicidades"
				salir <- verdadero
			1:
				Escribir "El numero que has introducido es mayor que el numero buscado"
			-1:
				Escribir "El numero que has introducido es menor que el numero buscado"
		Fin Segun
		
		
	Fin Mientras
	
	
FinAlgoritmo