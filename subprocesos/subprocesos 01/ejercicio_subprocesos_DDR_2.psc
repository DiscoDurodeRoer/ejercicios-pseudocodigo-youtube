SubProceso suma <- sumaNumeros (numero1, numero2)
	
	//DEvolvemos el valor de suma
	suma<-numero1+numero2
	
Fin SubProceso

Proceso sin_titulo
	
	//Declaro las variables
	num1<-5
	num2<-2
	
	//Llamo al subproceso
	sumaSubproceso<-sumaNumeros(num1,num2)
	
	Escribir sumaSubproceso
	
FinProceso