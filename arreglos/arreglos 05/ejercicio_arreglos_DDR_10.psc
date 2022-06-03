Proceso Ejercicio_10_DDR_arrays
	
	//Pedimos el tamaño del arreglo
	Escribir "Escribe un numero para el tamaño del arreglo"
	leer tamanio
	
	//Creamos los arreglos
	dimension numeros_aleatorios[tamanio]
	dimension contadores[4]
	
	//Recooremos el arreglo
	Para i<-0 Hasta tamanio-1 Con Paso 1 Hacer
		numeros_aleatorios[i] = Aleatorio(0,20)
		Escribir numeros_aleatorios[i]
		
		//Segun el valor, añadimos uno mas al arreglo 
		Si numeros_aleatorios[i]>=0 y numeros_aleatorios[i]<=5 Entonces
			contadores[0] = contadores[0] + 1
		Sino 
			si numeros_aleatorios[i]>=6 y numeros_aleatorios[i]<=10
				contadores[1] = contadores[1] + 1	
			Sino 
				si	numeros_aleatorios[i]>=11 y numeros_aleatorios[i]<=15
					contadores[2] = contadores[2] + 1	
				sino 
					si numeros_aleatorios[i]>=16 y numeros_aleatorios[i]<=20
						contadores[3] = contadores[3] + 1		
					fin si
				FinSi
			fin SI
		Fin Si
		
	Fin Para
	
	//Mostramos los valores
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Segun i Hacer
			0:
				Escribir "Deficientes (0-5): ", contadores[i]
			1:
				Escribir "Regulares (6-10): ", contadores[i]
			2:
				Escribir "Buenos (11-15): ", contadores[i]
			3:	
				Escribir "Excelentes (16-20): ", contadores[i]
		Fin Segun
	Fin Para
	
	
	
FinProceso
