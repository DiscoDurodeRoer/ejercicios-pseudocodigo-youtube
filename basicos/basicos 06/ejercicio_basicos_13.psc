// Indica si una frase es un panagrama, un panagrama es si una frase contiene todas las letras de un alfabeto.
// Por ejemplo: El veloz murciélago hindú comía feliz cardillo y kiwi. La cigüeña tocaba el saxofón detrás del palenque de paja

Proceso basicos_6
	
	// Definición de variables
	definir abecedario, frase como cadena;
	definir caracterFrase Como Caracter;
	definir contadores, i, j como numero;
	definir algunVacio Como Logico;
	
	abecedario <- "abcdefghijklmnopqrstuvwxyz";
	algunVacio <- Falso;
	Dimension contadores[26];
	
	// inicializamos el arreglo
	Para i<-0 Hasta Longitud(abecedario) - 1 Con Paso 1 Hacer
		contadores[i] <- 0;
	FinPara
	
	// Pedimos una frase
	Escribir "Escribe una frase: ";
	leer frase;
	frase <- Minusculas(frase);
	
	// Comprobamos si existe cada letra de la frase en el abecedario
	Para i<-0 Hasta Longitud(frase) - 1 Con Paso 1 Hacer
		caracterFrase <- Subcadena(frase, i,i);
		Para j<-0 Hasta Longitud(abecedario) - 1 Con Paso 1 Hacer
			Si caracterFrase = Subcadena(abecedario, j,j) Entonces
				contadores[j] <- contadores[j] + 1;
			FinSi
		FinPara
	FinPara
	
	i<-0;
	
	// Comprobamos si hay alguna posicion a cero
	Mientras no algunVacio y i < Longitud(abecedario) Hacer
		Si contadores[i] = 0 Entonces
			algunVacio <- Verdadero;
		FinSi
		i <- i + 1;
	FinMientras
	
	// Indicamos si es un panagrama o no
	Si algunVacio Entonces
		Escribir "No es un panagrama";
	SiNo
		Escribir "Es un panagrama";
	FinSi
	
FinProceso
