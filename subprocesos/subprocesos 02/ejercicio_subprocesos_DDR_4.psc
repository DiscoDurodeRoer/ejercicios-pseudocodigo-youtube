SubProceso resultado <- factorial (numero_factorial)
	
	resultado<-numero_factorial
	
	Para i<-numero_factorial-1 Hasta 2 Con Paso -1 Hacer
		resultado<-resultado*i
	Fin Para
	
Fin SubProceso

Proceso sin_titulo
	
	escribir factorial(5)
	
FinProceso