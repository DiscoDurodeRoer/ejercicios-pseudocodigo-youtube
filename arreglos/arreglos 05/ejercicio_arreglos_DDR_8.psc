Proceso Ejercicio_8_DDR_arrays
	
	//Validamos que el numero sea impar
	Repetir
		
		Escribir "Escribe un numero impar"
		leer impar
		
	Hasta Que impar % 2 = 1
	
	//Creamos el arreglo
	dimension numeros_aleatorios[impar]
	
	//Rellenamos con numeros aleatorios
	Para i<-0 Hasta impar-1 Con Paso 1 Hacer
		numeros_aleatorios[i] = Aleatorio(0,20)
		escribir numeros_aleatorios[i]
	Fin Para
	
	//Espacio
	Escribir ""
	
	//Valor de la posicion central
	pos_central = trunc(impar / 2)
	
	Escribir "Posicion central: ", numeros_aleatorios[pos_central]
	
FinProceso