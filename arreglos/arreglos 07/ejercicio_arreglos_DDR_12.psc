Algoritmo ejercicio_arreglos_7
	
	//Constantes usadas
	NUMERO_BILLETES <- 7
	NUMERO_MONEDAS <- 8
	TOTAL <- NUMERO_BILLETES + NUMERO_MONEDAS
	
	//arreglo de billetes
	dimension billetes(NUMERO_BILLETES)
	
	billetes(0)<-500
	billetes(1)<-200
	billetes(2)<-100
	billetes(3)<-50
	billetes(4)<-20
	billetes(5)<-10
	billetes(6)<-5
	
	//arreglo de monedas
	dimension monedas(NUMERO_MONEDAS)
	
	//las cantidades estan en centimos
	monedas(0)<-200
	monedas(1)<-100
	monedas(2)<-50
	monedas(3)<-20
	monedas(4)<-10
	monedas(5)<-5
	monedas(6)<-2
	monedas(7)<-1
	
	dimension cantidad_bill_mon(TOTAL)
	
	//Indices para los arreglos de billetes y monedas
	indice_billetes<-0
	indice_monedas<-0
	
	//Pedimos la cantidad
	escribir "Dame una cantidad mayor que 0"
	leer cantidad
	
	//Comprobamos si la cantidad es mayor que 0
	Si cantidad > 0 Entonces
		
		//Saco la parte decimal y la entera
		cantidad_entera <- trunc(cantidad)
		cantidad_decimal <- trunc(((cantidad - cantidad_entera) *100) + 0.1)
		
		//Recorro la cantidad_bill_mon
		Para i<-0 Hasta TOTAL-1 Con Paso 1 Hacer
			
			//Si la i esta entre 0 y 6 en este caso, tocamos los billetes
			Si i<NUMERO_BILLETES Entonces
				
				//Ponemos la cantidad de billetes diviendo entre su numero y truncamos
				cantidad_bill_mon(i) <- trunc(cantidad_entera / billetes(indice_billetes))
				
				//Actualizamos la cantidad entera usando el modulo (lo que sobra)
				cantidad_entera <- cantidad_entera MOD billetes(indice_billetes)
				
				//Aumentamos el indice de los billetes
				indice_billetes <- indice_billetes +1
				
			Sino
				
				//Solo para monedas de 1 y 2 euros (caso especial)
				Si indice_monedas>=0 y indice_monedas<=1 Entonces
					
					//Ponemos la cantidad de monedas diviendo entre su numero y truncamos
					cantidad_bill_mon(i) <- trunc(cantidad_entera / (monedas(indice_monedas) / 100))
					
					//Actualizamos la cantidad entera usando el modulo (lo que sobra)
					cantidad_entera <- cantidad_entera MOD (monedas(indice_monedas) /100)
					
				Sino
					
					//Ponemos la cantidad de monedas diviendo entre su numero y truncamos (parte decimla)
					cantidad_bill_mon(i) <- trunc(cantidad_decimal / monedas(indice_monedas))
					
					//Actualizamos la cantidad entera usando el modulo (lo que sobra)
					cantidad_decimal <- cantidad_decimal MOD monedas(indice_monedas)
				Fin Si
				
				//Aumentamos el indice de las monedas
				indice_monedas <- indice_monedas + 1
			Fin Si
			
		Fin Para
		
		//reiniciamos los indices
		indice_billetes<-0
		indice_monedas<-0
		
		//Recorremos de nuevo
		Para i<-0 Hasta TOTAL-1 Con Paso 1 Hacer
			
			//Si la i esta entre 0 y 6 en este caso, tocamos los billetes
			Si i<NUMERO_BILLETES Entonces
				//Si hemos rellenado una cantidad, la mostramos
				Si cantidad_bill_mon(i) > 0 Entonces
					Escribir "Cantidad de ",billetes(indice_billetes), "€ es de: ",cantidad_bill_mon(i)			
				Fin Si
				
				//Aumentamos el indice de las billetes
				indice_billetes <- indice_billetes + 1
				
			Sino
				//Si hemos rellenado una cantidad, la mostramos
				Si cantidad_bill_mon(i) > 0 Entonces
					//En este caso, llo volvemos a pasar a su valor original
					Escribir "Cantidad de ",(monedas(indice_monedas) / 100), "€ es de: ",cantidad_bill_mon(i)			
				Fin Si
				
				//Aumentamos el indice de las monedas
				indice_monedas <- indice_monedas + 1
			Fin Si
				
		Fin Para
		
	Sino
		escribir "La cantidad debe se mayor que 0"
	Fin Si
	
FinAlgoritmo
