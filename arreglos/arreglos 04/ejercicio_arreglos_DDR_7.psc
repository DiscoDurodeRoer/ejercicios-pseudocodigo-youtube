Algoritmo Ejercicio_DDR_7_arreglos
	
	//Indicamos el tamaño
	Escribir "Introduce el tamaño del arreglo"
	leer tamanio
	
	Dimension numeros_no_repetidos(tamanio)
	
	//Variables usadas
	numero_elementos = 0
	elemento = 0
	elemento_no_repetido = Verdadero
	
	//No salimos hasta que el numero de elementos sea igual al del tamaño
	Mientras numero_elementos < tamanio Hacer
		
		//Pedimos un valor numerico
		Escribir "Escribe un valor numerico, no repetido"
		leer elemento
		
		//Recorro de nuevo el arreglo
		Para i<-0 Hasta numero_elementos-1 Con Paso 1 Hacer
			
			//Comprobamos que el numero existe
			Si elemento = numeros_no_repetidos(i) Entonces
				elemento_no_repetido = Falso
			Fin Si
			
		Fin Para
		
		//Si no entra en el anterior Si .. entonces
		//Quiere decir que no esta en el arreglo
		Si elemento_no_repetido Entonces
			//Asigno el valor no repetico
			numeros_no_repetidos(numero_elementos) = elemento
			
			//Aumento el numero de elementos
			numero_elementos = numero_elementos +1
		Sino
			Escribir "Este elemento existe en el arreglo"
		Fin Si
		
		//Reinicio la variable
		elemento_no_repetido = Verdadero
		
	Fin Mientras
	
	//Muestro el arreglo
	Para i<-0 Hasta tamanio-1 Con Paso 1 Hacer
		Escribir numeros_no_repetidos(i)
	Fin Para
	
FinAlgoritmo