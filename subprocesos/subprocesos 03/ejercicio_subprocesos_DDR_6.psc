
//Rellena un arreglo con los valores pasados por parametro
Funcion rellenarArreglo ( arreglo, tamanioArreglo, valorInicial, valorFinal )
	
	Para i<-0 Hasta tamanioArreglo-1 Con Paso 1 Hacer
		//Genera un aleatorio
		arreglo(i) <- Aleatorio(valorInicial,valorFinal)
	Fin Para
	
Fin Funcion

//Muestra un arreglo pasado por parametro
Funcion mostrarArreglo (arreglo, tamanioArreglo)
	
	Para i<-0 Hasta tamanioArreglo-1 Con Paso 1 Hacer
		escribir arreglo(i)
	Fin Para
	
Fin Funcion

Algoritmo Ejercicio_DDR_subprocesos_6
	
	//Creo un arreglo
	dimension arregloEjemplo(5)
	
	//Relleno el arreglo aleatoriamente
	rellenarArreglo(arregloEjemplo, 5, 10,1)
	
	//muestro el arreglo
	mostrarArreglo(arregloEjemplo, 5)
	
	
FinAlgoritmo
