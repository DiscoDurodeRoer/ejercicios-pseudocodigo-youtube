//Crea un arreglo de enteros de 5 posiciones, lo llenas con números al azar:
// - Muestre TODO SU CONTENIDO.
// - Indica cuantos multiplos de 7 hay
// - Muestre LOS IMPARES
// - Muestre la SUMA DE LOS MÚLTIPLOS DE 8
// - Muestre EL PROMEDIO DE LOS PARES

Proceso ejercicio_arreglos_8
	
	definir arreglo, TAMANIO, numMultiplos7, i, sumaMultiplos8, sumaPares, numPares como entero;
	definir promedioPares como real;
	
	dimension arreglo(5);
	
	TAMANIO <- 5;
	
	Escribir "Rllenando arreglo con numeros aleatorios...";
	rellenarArrayAleatorios(arreglo, TAMANIO, 1,50);
	
	Escribir "Contenido del arreglo";
	mostrarArreglo(arreglo, TAMANIO);
	
	numMultiplos7 <- 0;
	sumaMultiplos8 <- 0;
	sumaPares <- 0;
	numPares <- 0;
	
	Para i<-0 Hasta TAMANIO-1 Con Paso 1 Hacer
		Si arreglo(i) MOD 7 = 0 Entonces
			numMultiplos7 <- numMultiplos7 + 1;
		FinSi
		
		Si arreglo(i) MOD 8 = 0 Entonces
			sumaMultiplos8 <- sumaMultiplos8 + arreglo(i);
		FinSi
		
		
	FinPara
	
	Escribir "Numero de multiplos de 7: ",numMultiplos7;
	
	Escribir "IMPARES: ";
	Para i<-0 Hasta TAMANIO-1 Con Paso 1 Hacer
		si arreglo(i) MOD 2 = 1 entonces
			Escribir arreglo(i);
		SiNo
			sumaPares <- sumaPares + arreglo(i);
			numPares <- numPares + 1;
		FinSi
	FinPara
	
	Escribir "Suma de multiplos de 8: ",sumaMultiplos8;
	
	promedioPares <- sumaPares / numPares;
	
	Escribir "El promedio de pares es de: ",promedioPares;
	
	
FinProceso

//Muestra el contenido de un arreglo
SubProceso mostrarArreglo(arreglo, longitudArreglo)
	definir i como numero;
	Para i<-0 Hasta longitudArreglo-1 Con Paso 1 Hacer
		Escribir arreglo(i);
	FinPara
FinSubProceso

//Genera un numero aleatorio entre el minimo y máximo incluidos
SubProceso numeroAzar <- numeroAleatorioEntre(minimo, maximo)
	definir numeroAzar como numero;
	numeroAzar <- 0;
	Repetir
		numeroAzar <- AZAR(maximo+1);
	Hasta Que numeroAzar >= minimo Y numeroAzar<=maximo	
FinSubProceso

//Rellena un arreglo de numeros aleatorios entre un mínimo y un máximo, números mínimo y máximo incluidos.
SubProceso rellenarArrayAleatorios(arreglo, longitudArreglo, minimo, maximo)
	definir numeroAzar,i como numero;
	numeroAzar <- 0;
	Para i<-0 Hasta longitudArreglo-1 Con Paso 1 Hacer
		numeroAzar <- numeroAleatorioEntre(minimo, maximo);
		arreglo(i) <- numeroAzar;
	FinPara
FinSubProceso

