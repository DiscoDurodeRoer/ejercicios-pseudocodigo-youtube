Proceso Ejercicio_DDR_basicos_11
	
	//Validamos el numero de alumnos
	Repetir
		
		Escribir "Escribe el numero de alumnos"
		leer alumnos
		
		Si alumnos<1 Entonces
			escribir "Debe ser mayor o igual que 1"
		Fin Si
		
	Hasta Que alumnos>0
	
	//Variables que vamos a usar
	nota_teorica = 0
	nota_practica = 0
	nota = 0
	
	//Recorremos el numero de alumnos
	Para i<-1 Hasta alumnos Con Paso 1 Hacer
		
		//Validamos la nota teorica
		Repetir
			
			Escribir "Introduce la nota teorica del alumno ",i
			leer nota_teorica
			
			Si no (nota_teorica>=0 y nota_teorica<=10) Entonces
				escribir "Debes escribir un valor entre 0 y 10"
			Fin Si
			
		Hasta Que nota_teorica>=0 y nota_teorica<=10
		
		//Validamos la nota practica
		Repetir
			
			Escribir "Introduce la nota practica del alumno ",i
			leer nota_practica
			
			Si no (nota_practica>=0 y nota_practica<=10) Entonces
				escribir "Debes escribir un valor entre 0 y 10"
			Fin Si
			
		Hasta Que nota_practica>=0 y nota_practica<=10
		
		//Calculamos la nota
		nota = (nota_teorica*0.6) + (nota_practica*0.4)
		
		//mostramos la nota
		Escribir "El alumno numero ",i," ha sacado una nota de ", nota
		
		
	Fin Para
	
	
	
FinProceso