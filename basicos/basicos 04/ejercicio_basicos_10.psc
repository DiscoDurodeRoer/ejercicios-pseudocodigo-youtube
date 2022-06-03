Proceso Ejercicio_DDR_basicos_10
	
	//Validamos N
	Repetir
		
		Escribir "Escribe N"
		leer n
		
		Si n<1 Entonces
			escribir "Debe ser mayor o igual que 1"
		Fin Si
		
	Hasta Que n>0
	
	//Variable a usar
	resultado = 0
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		
		//Calculamos el resultado
		resultado = i^2
		
		//Mostramos el resultado
		Escribir "El valor al cuadrado de ",i," es de ",resultado
		
	Fin Para
	
	
FinProceso