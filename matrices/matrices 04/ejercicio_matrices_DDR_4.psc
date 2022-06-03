// Crea un subproceso que sume la diagonal principal de una matriz de numeros, 
// otro para la diagonal inversa y otro que sume ambas
Proceso Matrices_4_DDR
	definir matriz como numero;
	definir TAMANIO como numero;
	Dimension matriz(3,3);
	
	// 1 2 3
	// 4 5 6
	// 7 8 9
	
	// 0,0 0,1 0,2
	// 1,0 1,1 1,2
	// 2,0 2,1 2,2
	
	matriz[0,0] <- 1;
	matriz[0,1] <- 2;
	matriz[0,2] <- 3;
	matriz[1,0] <- 4;
	matriz[1,1] <- 5;
	matriz[1,2] <- 6;
	matriz[2,0] <- 7;
	matriz[2,1] <- 8;
	matriz[2,2] <- 9;
	
	TAMANIO = 3;
	
	Escribir sumaDiagonalPrincipal(matriz, TAMANIO);
	Escribir sumaDiagonalInversa(matriz, TAMANIO);
	
FinProceso

SubProceso resultado <- sumaDiagonalPrincipal(matriz por referencia, TAMANIO por valor)
	definir resultado, i como entero;
	
	resultado <- 0;
	Para i<-0 Hasta TAMANIO-1 Con Paso 1 Hacer
		resultado <- resultado + matriz[i,i];
	FinPara
	
	
FinSubProceso


SubProceso resultado <- sumaDiagonalInversa(matriz Por Referencia, TAMANIO por valor)
	
	definir resultado, i como entero;
	resultado <- 0;
	
	Para i<-0 Hasta TAMANIO-1 Con Paso 1 Hacer
		resultado <- resultado + matriz[i, TAMANIO - i - 1];
	FinPara
	
FinSubProceso

SubProceso resultado <- sumaDiagonales(matriz Por Referencia, TAMANIO por valor)
	
	definir resultado como entero;
	resultado <- sumaDiagonalPrincipal(matriz, TAMANIO) + sumaDiagonalInversa(matriz, TAMANIO);
	
FinSubProceso











