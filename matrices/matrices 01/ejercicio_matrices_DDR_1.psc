
//Nos dice cual es departamento que mas ha producido en un mes concreto
Funcion ventaMayorMes ( montones Por Referencia, NUM_DEPARTAMENTOS, mes )
	
	mayor_elemento = 0
	indice_departamento = 0
	
	//Solo recorremos una columna(de arriba a abajo)
	Para i<-0 Hasta NUM_DEPARTAMENTOS-1 Con Paso 1 Hacer
		
		Si montones(i, mes) > mayor_elemento Entonces
			mayor_elemento = montones(i, mes)
			indice_departamento = i
		Fin Si
		
	Fin Para
	
	Escribir "La mayor venta del mes ",(mes+1), " es de ", mayor_elemento, " por el departamento ",(indice_departamento+1)
	
Fin Funcion

//Indica el mes donde mas se ha producido de un departamento concreto
Funcion ventaMayorDepartamento ( montones Por Referencia, MESES , departamento )
	
	mayor_elemento = 0
	indice_mes = 0
	
	//Recorremos una fila (de izquierda a derecha)
	Para i<-0 Hasta MESES-1 Con Paso 1 Hacer
		
		Si montones(departamento, i) > mayor_elemento Entonces
			mayor_elemento = montones(departamento, i)
			indice_mes = i
		Fin Si
		
	Fin Para
	
	Escribir "La mayor venta del departamento ",(departamento+1), " es de ", mayor_elemento, " en el mes ",(indice_mes+1)
	
Fin Funcion

//Realiza la suma de todos los elementos de la matriz
Funcion ventaAnual ( montones Por Referencia, NUM_DEPARTAMENTOS, MESES )
	
	suma = 0
	Para i<-0 Hasta NUM_DEPARTAMENTOS-1 Con Paso 1 Hacer
		
		Para j<-0 Hasta MESES-1 Con Paso 1 Hacer
			suma = suma + montones(i,j)
		Fin Para
		
	Fin Para
	
	Escribir "La venta anual es ",suma
	
Fin Funcion

//Reaaliza la venta mensual de todos los departamentos de cada uno de los meses
Funcion ventasMensuales ( montones Por Referencia, NUM_DEPARTAMENTOS, MESES )
	
	suma = 0
	
	Para i<-0 Hasta MESES-1 Con Paso 1 Hacer
		
		Para j<-0 Hasta NUM_DEPARTAMENTOS-1 Con Paso 1 Hacer
			suma = suma + montones(j,i)
		Fin Para
		
		Escribir "MES: ", (i+1) , " la suma es ", suma
		
		suma = 0 //Reiniciamos la variable
		
	Fin Para
	
Fin Funcion

Algoritmo ejercicio_matrices_1
	
	//Constantes usadas
	NUM_DEPARTAMENTOS = 5
	MESES = 12
	
	//Creo la matriz
	dimension montones(NUM_DEPARTAMENTOS,MESES)
	
	//Creo valores aleatorios
	Para i<-0 Hasta NUM_DEPARTAMENTOS-1 Con Paso 1 Hacer
		Escribir "Departamento ",(i+1),": " Sin Saltar
		Para j<-0 Hasta MESES-1 Con Paso 1 Hacer
			montones(i, j) = Aleatorio(10, 99)
			Escribir montones(i,j) , " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
	
	//Menu
	salir = Falso
	
	Mientras no salir Hacer
		
		Escribir "---MENU---"
		Escribir "Elige una opcion"
		Escribir "1. Ventas Mensuales"
		Escribir "2. Venta Anual"
		Escribir "3. Mayor venta MES julio"
		Escribir "4. Mayor venta Departamento"
		Escribir "5. Salir"
		
		leer opcion_menu
		
		//Simplemente cada opcion llama a una funcion
		Segun opcion_menu Hacer
			1:
				ventasMensuales(montones, NUM_DEPARTAMENTOS, MESES)
			2:
				ventaAnual(montones, NUM_DEPARTAMENTOS, MESES)
			3:
				ventaMayorMes(montones, NUM_DEPARTAMENTOS, 6)
			4:
				
				Escribir "indica el numero de departamento"
				leer departamento
				
				ventaMayorDepartamento(montones, NUM_DEPARTAMENTOS, departamento-1)
				
			5:
				salir = Verdadero
			De Otro Modo:
				Escribir eligue una opcion correcta
		Fin Segun
		
	Fin Mientras
	
	
	
	
	
FinAlgoritmo
