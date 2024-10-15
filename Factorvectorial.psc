Algoritmo 	Factorvectorial
	definir v1 , v2 , i , j, g Como Real;
	Dimension v1(5);
	Dimension v2(5);
	
	Para i <-0 Hasta 4 Con Paso 1 Hacer
		Escribir "Ingresa el numero ", i + 1 , ":" ;
		Leer v1(i);
	FinPara
	
	
	Para i <- 0 hasta 4 Con Paso 1 hacer
		f<-1;
		Para j<-1 Hasta v1[i] Con Paso 1 Hacer
			f<-f*j;
		FinPara
		v2[i]<-f;
	FinPara
	
	Escribir "El vector factorial es:";
	Para i <-0 Hasta 4 Con Paso 1 Hacer
		Escribir "El vector factorial es:";
		Para i<-0 Hasta 4 Con Paso 1 Hacer
			Escribir "Factorial de" ,vi(1) , "es" , v2(i);
		FinPara
	FinPara
FinProceso
