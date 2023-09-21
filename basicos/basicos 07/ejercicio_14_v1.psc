Proceso Ejercicio14V1
	
	// Variables
	definir num, cifras como numero;
	
	// Pedimos un numero
	Escribir "Dame un numero";
	leer num;
	
	// Convertimos el numero a absoluto
	num <- abs(num);
	cifras <- 0;
	
	// Si es 0 solo tiene una cifra
	Si num = 0 Entonces
		cifras <- 1;
	SiNo
		
		// Miestras sea el numero mayor que 0, vamos sumando cifras
		Mientras num > 0 Hacer
			cifras <- cifras + 1;
			// Actualizamos el numero
			num <- trunc(num / 10);
		FinMientras
		
	FinSi
	
	// Resultado
	Escribir "El numero de cifras es de ", cifras;
	
FinProceso
