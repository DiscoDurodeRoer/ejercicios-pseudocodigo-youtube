Proceso ejercicio_basico_4
	
	//Pedimos lo valores
	escribir "Escriba un numero"
	Leer num1
	
	Escribir "Escriba otro numero"
	leer num2
	
	//Comprobamos si el num1 es mayor o igal que num2
	Si num1>=num2 Entonces
		
		//Comprobamos si num1 y num2 on iguales
		//sino no lo son, num1 es mayor
		Si num1=num2 Entonces
			Escribir "Son iguales"
		Sino
			Escribir "num1 ",num1," es mayor que num2 ",num2
		Fin Si
		
	Sino
		Escribir "num2 ",num2," es mayor que num1 ",num1
	Fin Si
	
FinProceso
