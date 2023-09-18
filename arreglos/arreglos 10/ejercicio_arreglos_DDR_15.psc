Proceso OrdenarArreglo
    
	// Definicion de variables
	definir arreglo, numeroElementos, i,j, pos, aux como numero;
	definir ordenamiento como cadena;
	
	// inicializacion de variables
	dimension arreglo[10];
	numeroElementos <- 10;
	
	// Crear arreglo con valores aleatorios
	Escribir "Original: ";
	Para i<-0 Hasta numeroElementos - 1 Con Paso 1 Hacer
		arreglo[i] <- azar(100);
		Escribir arreglo[i], " " Sin Saltar;
	FinPara
	Escribir "";
	
	// Modo de ordenamiento
	Escribir "El modo de ordenamiento a usar (ASC/DESC)";
	leer ordenamiento;
	ordenamiento <- Mayusculas(ordenamiento);
	
	// Si no es ASC o DESC, mostramos un error
	Si ordenamiento <> "ASC" Y ordenamiento <> "DESC" Entonces
		Escribir "El ordenamiento no es correcto";
	SiNo
		
		// Recorremos los elementos
		Para i<-0 Hasta numeroElementos - 1 Con Paso 1 Hacer
			// Guardamos el valor de i en pos
			pos <- i;
			// Recorremos desde la siguiente posicion
			// Buscamos el elemento menor (ASC) o mayor (DESC) para intercambiarlo
			Para j<-i+1 Hasta numeroElementos - 1 Con Paso 1 Hacer
				Si (ordenamiento = "ASC" Y arreglo[j] < arreglo[pos]) o (ordenamiento = "DESC" Y arreglo[j] > arreglo[pos])  Entonces
					pos <- j;
				FinSi
			FinPara
			
			// Intercambiamos la variable
			aux <- arreglo[i];
			arreglo[i] <- arreglo[pos];
			arreglo[pos] <- aux;
			
		FinPara
		
		// Mostramos el resultado
		escribir "Resultado:";
		Para i<-0 Hasta numeroElementos - 1 Con Paso 1 Hacer
			Escribir arreglo[i], " " Sin Saltar;
		FinPara
		
	FinSi
	
FinProceso