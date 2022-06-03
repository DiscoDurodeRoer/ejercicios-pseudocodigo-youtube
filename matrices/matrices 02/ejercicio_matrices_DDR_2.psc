Algoritmo sin_titulo
	
	//Constantes
	FILAS <- 5
	COLUMNAS <-7
	
	LUNES <- 0
	MARTES <- 1
	MIERCOLES <- 2
	JUEVES <- 3
	VIERNES <- 4
	SABADO <- 5
	DOMINGO <- 6
	
	//Arreglos y matrices
	Dimension dias(COLUMNAS)
	dias(0)<-"Lunes"
	dias(1)<-"Martes"
	dias(2)<-"Miercoles"
	dias(3)<-"Jueves"
	dias(4)<-"Viernes"
	dias(5)<-"Sabado"
	dias(6)<-"Domingo"
	
	Dimension temperaturas[5,7];
	
	//Cabecera
	Escribir  "LU MA MI JU VI SA DO";
	
	limite <- 0
	
	//Recorremos las 5 semanas
	Para i<-0 Hasta FILAS-1 Con Paso 1 Hacer
		
		//Si es la ultima semana, recorremos hasta el miercoles
		Si i=FILAS-1 Entonces
			limite <- MIERCOLES
		Sino
			limite <- DOMINGO
		Fin Si
		
		//Recorremos los dias, segun el limite
		Para j<-0 Hasta limite Con Paso 1 Hacer
			
			//Rellenamos la temperatura de un dia aleatoriamente
			temperaturas(i,j) <- Aleatorio(7,38)
			
			//Si es menor que 10, le ponemos un espacio delante.
			//Para que se adapte bien
			Si temperaturas(i,j)<10 Entonces
				Escribir " " ,temperaturas(i,j) " " Sin Saltar
			Sino
				Escribir temperaturas(i,j) " " Sin Saltar
			Fin Si
			
		Fin Para
		
		Escribir ""
		
	Fin Para
	
	//Variables para la temperatura mas alta del mes y su dia(numero y nombre del dia)
	mayorTemperaturaGeneral <- temperaturas(0,0)
	diaMayorTemperaturaGeneral <- 1
	diaSemanaMayorTemperaturaGeneral <- 0
	
	//Recorremos las 5 semanas
	Para i<-0 Hasta FILAS-1 Con Paso 1 Hacer
		
		//Cada semana se reinicia
		//Variables para el mayor y menor de la semana
		mayorTemperaturaSemana <- temperaturas(i,0)
		diaMayorTemperaturaSemana <- LUNES
		
		menorTemperaturaSemana <- temperaturas(i,0)
		diaMenorTemperaturaSemana <- LUNES
		
		//sumador
		sumaTemperatura <- 0
		
		//Si es la ultima semana, recorremos hasta el miercoles
		Si i=FILAS-1 Entonces
			limite <- MIERCOLES
		Sino
			limite <- DOMINGO
		Fin Si
		
		//Recorremos los dias, segun el limite
		Para j<-0 Hasta limite Con Paso 1 Hacer
			
			//Comprobamos las temperaturas (mayor en la semana)
			Si temperaturas(i,j)>mayorTemperaturaSemana Entonces
				mayorTemperaturaSemana <- temperaturas(i,j)
				diaMayorTemperaturaSemana <- j
			Fin Si
			
			//Comprobamos las temperaturas (menor en la semana)
			Si temperaturas(i,j)<menorTemperaturaSemana Entonces
				menorTemperaturaSemana <- temperaturas(i,j)
				diaMenorTemperaturaSemana <- j
			Fin Si
			
			//Comprobamos las temperaturas (mayor en el mes)
			Si temperaturas(i,j)>mayorTemperaturaGeneral Entonces
				mayorTemperaturaGeneral <- temperaturas(i,j)
				diaSemanaMayorTemperaturaGeneral <- j
				//Obtenemos el dia del mes en numero
				diaMayorTemperaturaGeneral <- (i * COLUMNAS) + j+1  
			Fin Si
			
			//sumamos la temperatura
			sumaTemperatura<-sumaTemperatura + temperaturas(i,j)
			
		Fin Para
		
		//mostramos los datos de la semana
		Escribir "En la semana ",(i+1), " la mayor temperatura es de ",mayorTemperaturaSemana," en el dia ", dias(diaMayorTemperaturaSemana)
		Escribir "En la semana ",(i+1), " la menor temperatura es de ",menorTemperaturaSemana," en el dia ", dias(diaMenorTemperaturaSemana)
		
		escribir ""
		//calculo la media o promedio
		media<- sumaTemperatura / COLUMNAS
		
		Escribir "La media de la semana ",(i+1), "es de ",media
		
		Escribir ""
		
	Fin Para
	
	//Mostramos los datos del mes
	Escribir "La mayor temperatura del mes es de ",mayorTemperaturaGeneral," en el dia ", dias(diaSemanaMayorTemperaturaGeneral), "(",diaMayorTemperaturaGeneral,")"
	
FinAlgoritmo
