Algoritmo ejercicio_basicos_DDR_5
	
	//Variables
	horas<-0
	minutos<-0
	segundos<-0
	
	//Bucle infinito
	Mientras Verdadero Hacer
		
		//Mostrar, si es menor de 10 escribira un 0 antes
		Si horas<10 Entonces
			Escribir "0" Sin Saltar
		Fin Si
		
		Escribir horas,":" Sin Saltar
		
		Si minutos<10 Entonces
			Escribir "0" Sin Saltar
		Fin Si
		
		Escribir minutos,":" Sin Saltar
		
		Si segundos<10 Entonces
			Escribir "0" Sin Saltar
		Fin Si
		
		Escribir segundos
		
		//Aumentar en un segundo
		segundos<-segundos+1
		
		//Comprobar el tiempo
		Si segundos=60 Entonces
			//Un minuto mas
			minutos<-minutos+1
			//Reiniciamos los segundos
			segundos<-0
			
			Si minutos=60 Entonces
				//Una hora mas
				horas<-horas+1
				//Reiniciamos los minutos
				minutos<-0
				Si horas=24 Entonces
					//Reiniciamos las horas
					horas<-0
				Fin Si
			Fin Si
		Fin Si
		
		Esperar 1 segundos
		
	Fin Mientras
	
FinAlgoritmo