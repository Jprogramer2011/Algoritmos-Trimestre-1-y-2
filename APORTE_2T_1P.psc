Proceso APORTE_2T_1P
	Definir vector1, vector2, resultado Como Real; //Define las variables de los vectores.
	Definir a Como Entero;						//Define "a" que será utilizado para los bucles "para".
	Dimension vector1(4), vector2(4), resultado(4);
	Escribir "Ingrese 4 números";					//Pide que ingrese los primeros 4 números.
	Para a<-0 hasta 3 Con Paso 1 Hacer
		Leer vector1(a);
	FinPara
	Escribir "Ingrese otros 4 números";			//Pide que ingrese los otros 4 números.
	Para a<-0 hasta 3 Con Paso 1 Hacer
		Leer vector2(a);
	FinPara
	Escribir "La multiplicación de ambos vectores da:";
	Para a<-0 hasta 3 Con Paso 1 Hacer
		resultado(a)<-vector1(a)*vector2(a);			//Calcula la multiplicación de ambos vectores y almacena la respuesta en "resultado".
		Escribir vector1(a), " × ", vector2(a), " = ", resultado(a); //Muestra los resultados.
	FinPara										//FACILISIMO VERDAD.
FinProceso