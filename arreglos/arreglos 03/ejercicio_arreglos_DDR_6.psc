

SubProceso contador <- buscarElementos ( algebra, analisis, comunes Por Referencia, TAMANIO )
	
	contador = 0
	Para i<-0 Hasta TAMANIO Con Paso 1 Hacer
		Para j<-0 Hasta TAMANIO Con Paso 1 Hacer
			
			Si algebra(i) = analisis(j) Entonces
				comunes(contador) = algebra(i)
				contador = contador + 1
			Fin Si
			
		Fin Para
	Fin Para
	
Fin SubProceso

SubProceso rellenarArreglo ( arreglo, TAMANIO, materia )
	
	Para i<-0 Hasta TAMANIO Con Paso 1 Hacer
		Escribir "Inserta el ID del alumno de la materia ",materia," en la posicion ",i
		Leer arreglo(i)
	Fin Para
	
Fin SubProceso

Proceso ejercicio_arreglos_DDR_6
	
	TAMANIO = 4
	
	Dimension algebra(TAMANIO)
	dimension analisis(TAMANIO)
	
	Dimension comunes(TAMANIO)
	
	rellenarArreglo(algebra, TAMANIO-1, "Algebra")
	rellenarArreglo(analisis, TAMANIO-1, "Analisis")
	
	
	num_alumnos_comunes =  buscarElementos(algebra, analisis, comunes, TAMANIO-1)
	
	
	Escribir "Hay ",num_alumnos_comunes," comunes"
	
	Para i<-0 Hasta num_alumnos_comunes Con Paso 1 Hacer
		Escribir comunes(i)
	Fin Para
	
	
	
	
	
FinProceso

