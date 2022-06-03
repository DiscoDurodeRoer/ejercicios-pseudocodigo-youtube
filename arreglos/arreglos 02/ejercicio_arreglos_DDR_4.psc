Proceso ejercicio_arreglos_DDR_4
	
	//Tamaño del arreglom se puede cambiar
	TAMANIO = 5
	
	Dimension a1(TAMANIO)
	Dimension a2(TAMANIO)
	Dimension a3(TAMANIO)
	
	//Recorremos de 0 a Tamaño-1
	//Podemos rellenar el arreglo a1, a2 y a3
	Para i<-0 Hasta TAMANIO-1 Con Paso 1 Hacer
		
		Escribir "Introduce el valor del arreglo a1 en la posicion ",i
		leer a1(i)
		
		Escribir "Introduce el valor del arreglo a2 en la posicion ",i
		leer a2(i)
		
		a3(i) = a1(i) + a2(i)
		
	Fin Para
	
	//Mostramos los datos en el formato dicho
	Para i<-0 Hasta TAMANIO-1 Con Paso 1 Hacer
		
		Escribir a1(i) ," + ",a2(i)," = ", a3(i)
		
	Fin Para
	
	
FinProceso