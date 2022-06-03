
//Muestra un arreglo pasado por parametro
Funcion mostrarArreglo (arreglo, tamanioArreglo)
	
	Para i<-0 Hasta tamanioArreglo-1 Con Paso 1 Hacer
		escribir arreglo(i)
	Fin Para
	
Fin Funcion

Algoritmo Ejercicio_DDR_subprocesos_5
	
	//Creo un arreglo
	dimension arregloEjemplo(5)
	
	//Relleno el arreglo con los numeros del 1 al 5
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		arregloEjemplo(i) <- i+1
	Fin Para
	
	//Muestra el arreglo
	mostrarArreglo(arregloEjemplo, 5)
	
FinAlgoritmo
