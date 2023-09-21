Proceso Ejercicio14V2
	
	// Variables
	definir num, cifras como numero;
	
	// Pedimos un numero
	Escribir "Dame un numero";
	leer num;
	
	// Convertimos el numero a absoluto
	num <- abs(num);
	cifras <- 0;
	
	// Convertimos el numero a texto y despues sacamos su longitud
	cifras <- Longitud(ConvertirATexto(num));
	
	// Resultado
	Escribir "El numero de cifras es de ", cifras;
	
FinProceso
