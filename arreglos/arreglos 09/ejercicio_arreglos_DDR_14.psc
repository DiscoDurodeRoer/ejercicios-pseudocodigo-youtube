Algoritmo arrays_DDR_9 
	
	Definir medicamentos, respuesta como cadena;
	definir cantidades, precios, i, medicamento, cantidad como entero;
	definir descuentos, costo, total como real;
	Definir terminar como logico;
	
	dimension medicamentos(4);
	
	medicamentos[0] <- "ACETAMINOFEN x 500 mg";
	medicamentos[1] <- "PEDIALYTE";
	medicamentos[2] <- "AMOXICILINA X 500 MG";
	medicamentos[3] <- "VITAMINA E";
	
	Dimension cantidades(4);
	
	cantidades[0] <- 500;
	cantidades[1] <- 1200;
	cantidades[2] <- 800;
	cantidades[3] <- 1500;
	
	Dimension precios(4);
	
	precios[0] <- 14200;
	precios[1] <- 6500;
	precios[2] <- 18000;
	precios[3] <- 39000;
	
	dimension descuentos(4);
	
	descuentos[0] <- 0.1;
	descuentos[1] <- 0.12;
	descuentos[2] <- 0.15;
	descuentos[3] <- 0.25;
	
	terminar <- Falso;
	costo <- 0;
	total <- 0;
	
	Repetir
		
		Escribir "Elige un medicamento: ";
		Para i<-0 Hasta 3 Con Paso 1 Hacer
			Escribir i , ": ", medicamentos[i];
		FinPara
		
		leer medicamento;
		
		Si medicamento>=0 Y medicamento<=3 Entonces
			
			Escribir "Indica la cantidad";
			leer cantidad;
			
			Si cantidad > cantidades[medicamento] Entonces
				Escribir "No hay suficiente cantidad";
			SiNo
				
				Si cantidad >= 10 Entonces
					costo <- (cantidad * precios[medicamento] * (1 - descuentos[medicamento]));
				SiNo
					costo <- (cantidad * precios[medicamento]);
				FinSi
				
				total <- total + costo;
				
				escribir "El costo del medicamento es: ", costo;
				
				cantidades[medicamento] <- cantidades[medicamento] - cantidad;
				
				Escribir "Quedan ",  cantidades[medicamento] , " medicamentos de " , medicamentos[medicamento];
				
			FinSi
			
		SiNo
			Escribir "El medicamento no es correcto";
		FinSi
		
		Escribir "¿quieres terminar? (Y/N)";
		
		leer respuesta;
		
		Si respuesta = "Y" Entonces
			terminar <- Verdadero;
		FinSi
		
		
	Hasta Que terminar
	
	Escribir "El costo final es de: ", total;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
