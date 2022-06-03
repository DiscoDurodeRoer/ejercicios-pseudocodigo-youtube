Proceso ejercicio_arreglos_DDR_5
	
	//Tamaño del arreglom se puede cambiar
	TAMANIO = 5
	
	dimension a1(TAMANIO)
	
	a1(0)=2
	a1(1)=5
	a1(2)=4
	a1(3)=3
	a1(4)=2
	
	//Introducimos el numero a buscar
	Escribir "Inserta elemento a buscar"
	leer numeroBuscado
	
	//Usado para marcar si existe o no el elemento buscado
	encontrado = falso 
	
	//Recorremos el arreglo buscando los elementos
	Para i<-0 Hasta TAMANIO-1 Con Paso 1 Hacer
		
		Si numeroBuscado = a1(i) Entonces
			Escribir "Se ha encontrado el numero ",numeroBuscado," en la posicion ",i
			encontrado = verdadero //Ya existe algun elemento
		Fin Si
		
	Fin Para
	
	//Sino encuentro nada, muestro un mensaje
	Si no encontrado Entonces
		Escribir "No se ha encontrado ningun elemento"
	Fin Si
	
	
FinProceso