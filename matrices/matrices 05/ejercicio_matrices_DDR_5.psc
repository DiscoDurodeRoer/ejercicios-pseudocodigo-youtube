// Que trata de un autobús en el cual se deben de subir 12 personas y cada persona debe ocupar un asiento, 
// pero el asiento lo debe de ocupará aleatoriamente y cuál que fila qué desea ir, 
// al final debe de bajar a las personas 1 en 1 y cobrarle €15.
// Utilizando una matriz de (2,12) en modo estricto

Proceso Matrices_5_DDR
	
	// Defino las variables
	definir autobus, numero_personas, filas, personas_subidas, posicion, fila,total,i,j, precio_billete como entero;
	
	// Doy valor a algunas variables
	numero_personas <- 12;
	filas <- 2;
	precio_billete <- 15;
	
	// Declaro la matriz
	Dimension autobus(2,12);
	
	// Inicializo la matriz
	Para i<-0 Hasta filas-1 Con Paso 1 Hacer
		Para j<-0 Hasta numero_personas-1 Con Paso 1 Hacer
			autobus(i,j) <- 0;
		FinPara
	FinPara
	
	personas_subidas <- 0;
	Repetir
		
		// genero la posicion
		posicion <- numeroAleatorioEntre(0,numero_personas-1);
		
		// Pedimos la fila
		escribir "Escribir la fila (0,1)";
		leer fila;
		
		// Comprobamos si la fila esta entre 0 y 1
		Si fila>=0 y fila<=1 Entonces
			
			// Compruebo si ya hay una persona ya sentada
			Si autobus(fila,posicion) = 1 Entonces
				escribir "Ya existe una persona en la fila " , fila , " y asiento ", posicion;
			SiNo
				// Se sienta la persona
				autobus(fila,posicion) <- 1;
				escribir "Se sienta una persona en la fila " , fila , " y asiento ", posicion;
				// Aumento el numero de personas subidas
				personas_subidas <- personas_subidas + 1;
				
			FinSi
			
			
		SiNo
			Escribir "La fila debe ser 1 o 0";
		FinSi
		
		
	Hasta Que personas_subidas > numero_personas-1;
	
	total <- 0;
	Para i<-0 Hasta filas-1 Con Paso 1 Hacer
		Para j<-0 Hasta numero_personas-1 Con Paso 1 Hacer
			// Si hay una persona sentada
			Si autobus(i,j) = 1  Entonces
				// Se baja la persona
				autobus(i,j) <- 0;
				escribir "Se baja una persona en la fila " , i, " y asiento ", j;
				// Aumentamos el total
				total <- total + precio_billete;
			FinSi
		FinPara
	FinPara
	
	// Muestro el total
	Escribir "Total: ", total;
	

FinProceso

//Genera un numero aleatorio entre el minimo y máximo incluidos
SubProceso numeroAzar <- numeroAleatorioEntre(minimo, maximo)
	definir numeroAzar como numero;
	numeroAzar <- 0;
	
	Repetir
		
		numeroAzar <- AZAR(maximo+1);
		
	Hasta Que numeroAzar >= minimo Y numeroAzar<=maximo
	
	
FinSubProceso 