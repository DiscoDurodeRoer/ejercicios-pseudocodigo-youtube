Proceso ejercicio_arreglos_6
	
	//Constantes usadas
	MINIMO = -100
	MAXIMO = 100
	FORMA_1 = 1
	FORMA_2 = 2
	
	//Pedimos la longitud de los arreglos
	Escribir "Escribe una longitud"
	leer longitud_arreglos
	
	//Dimensiones de los arreglos
	Dimension A(longitud_arreglos)
	Dimension B(longitud_arreglos)
	Dimension C(longitud_arreglos)
	
	arreglo_A_rellenado = FALSO
	arreglo_B_rellenado = FALSO
	
	opcion_menu = 0
	Repetir
		
		//Menu
		Escribir "1. Llenar Vector A de forma aleatoria";
		Escribir "2. Llenar Vector B de forma aleatoria";
		Escribir "3. Realizar C = A + B";
		Escribir "4. Realizar C = B - A";
		Escribir "5. Mostrar arreglo";
		Escribir "6. Salir";
		
		//elijo una opcion del menu
		Escribir "Elige una opcion"
		leer opcion_menu
		
		salir = FALSO
		Segun opcion_menu Hacer
			//Opciones del menu
			1:
				//relleno el arreglo A
				llenarArreglo(A, longitud_arreglos, MINIMO, MAXIMO)
				arreglo_A_rellenado = VERDADERO
				Escribir "el arreglo A ha sido rellenado"
			2:
				//relleno el arreglo B
				llenarArreglo(B, longitud_arreglos, MINIMO, MAXIMO)
				arreglo_B_rellenado = VERDADERO
				Escribir "el arreglo B ha sido rellenado"
			3:
				Si arreglo_A_rellenado Y arreglo_B_rellenado Entonces
					//relleno el arreglo C
					rellenarC(A, B, C, longitud_arreglos, FORMA_1)
					Escribir "el arreglo C ha sido rellenado"
				Sino
					
					Si no arreglo_A_rellenado Entonces
						Escribir "Tienes que rellenar el arreglo A"
					Fin Si
					
					Si no arreglo_B_rellenado Entonces
						Escribir "Tienes que rellenar el arreglo B"
					Fin Si
				Fin Si
			4:
				Si arreglo_A_rellenado Y arreglo_B_rellenado Entonces
					//relleno el arreglo C
					rellenarC(A, B, C, longitud_arreglos, FORMA_2)
					Escribir "el arreglo C ha sido rellenado"
				Sino
					
					Si no arreglo_A_rellenado Entonces
						Escribir "Tienes que rellenar el arreglo A"
					Fin Si
					
					Si no arreglo_B_rellenado Entonces
						Escribir "Tienes que rellenar el arreglo B"
					Fin Si
				Fin Si
			5:
				//Submenu
				opcion_submenu = 0
				Repetir
					Escribir "Escribe que arreglo quieres mostrar"
					Escribir "1. A"
					Escribir "2. B"
					Escribir "3. C"
					Escribir "4. Salir"
					
					leer opcion_submenu
					salir_submenu = FALSO
					//mostrar arreglos
					Segun opcion_submenu Hacer
						1:
							mostrarArreglo(A, longitud_arreglos)
						2:
							mostrarArreglo(B, longitud_arreglos)
						3:
							mostrarArreglo(C, longitud_arreglos)
						4:
							salir_submenu = Verdadero
						De Otro Modo:
							Escribir "Elige alguna de las opciones"
					Fin Segun
					
				Mientras Que no salir_submenu
				
			6:
				salir = VERDADERO
			De Otro Modo:
				Escribir "Escribe una opcion entre 1 y 6"
		Fin Segun
		
		
	Mientras Que no salir 

FinProceso

//rellena el arreglo
Subproceso llenarArreglo ( arreglo Por Referencia, longitud_arreglos, min, max )
	
	Para i<-0 Hasta longitud_arreglos-1 Con Paso 1 Hacer
		arreglo(i) <- Aleatorio(min,max)
	Fin Para

Fin subproceso

//Muestra un arreglo concreto
Subproceso mostrarArreglo ( arreglo Por Referencia, longitud_arreglos)
	
	Para i<-0 Hasta longitud_arreglos-1 Con Paso 1 Hacer
		escribir arreglo(i) , " " Sin Saltar
	Fin Para
	Escribir ""
	
Fin subproceso

//Rellena el arreglo C 
subproceso rellenarC ( arregloA Por Referencia, arregloB Por Referencia,arregloC Por Referencia,longitud_arreglos, tipo )
	
	Si tipo = 1 Entonces
		
		//punto 3
		Para i<-0 Hasta longitud_arreglos-1 Con Paso 1 Hacer
			arregloC(i) = arregloA(i) + arregloB(i)
		Fin Para
		
	Sino
		
		//punto 4
		Para i<-0 Hasta longitud_arreglos-1 Con Paso 1 Hacer
			arregloC(i) = arregloB(i) - arregloA(i)
		Fin Para
	Fin Si
	
Fin subproceso
























