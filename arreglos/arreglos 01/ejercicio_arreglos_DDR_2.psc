Proceso ejercicio_2_arreglos
	
	N <- 10
	
	Dimension arreglo(N)
	
	suma <- 0
	
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		
		arreglo(i) <- i
		
		suma <- suma + arreglo(i)
		
		escribir arreglo(i)
		
	Fin Para
	
	escribir "La suma es ", suma
	
FinProceso