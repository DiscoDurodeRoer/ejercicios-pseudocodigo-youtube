Proceso Ejercicio_9_DDR_arrays
	
	//Pedimos el tamaño del arreglo
	Escribir "Escribe un numero para el tamaño del arreglo"
	leer tamanio
	
	//Creamos el arreglo
	dimension numeros_aleatorios[tamanio]
	
	aprobados = 0
	desaprobados = 0
	
	sum_aprobados = 0
	sum_desaprobados = 0
	
	//
	Para i<-0 Hasta tamanio-1 Con Paso 1 Hacer
		numeros_aleatorios[i] = Aleatorio(0,20)
		Escribir numeros_aleatorios[i]
		
		Si numeros_aleatorios[i] >=10 Entonces
			aprobados = aprobados + 1
			sum_aprobados = sum_aprobados + numeros_aleatorios[i]
		Sino
			desaprobados = desaprobados + 1
			sum_desaprobados = sum_desaprobados + numeros_aleatorios[i]
		Fin Si
		
	Fin Para
	
	//Calculamos el promedio
	prom_aprobados = sum_aprobados / aprobados
	prom_desaprobados = sum_desaprobados / desaprobados
	
	//Mostramos los valores
	Escribir "Hay ",aprobados," aprobados"
	Escribir "Hay ",desaprobados," desaprobados"
	
	Escribir "El promedio de los aprobados es ",prom_aprobados
	Escribir "El promedio de los desaprobados es ",prom_desaprobados
	
	
	
FinProceso
