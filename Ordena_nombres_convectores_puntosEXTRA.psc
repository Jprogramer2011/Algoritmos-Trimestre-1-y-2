Proceso Ordena_nombres_convectores
	Definir nombres, temp Como Caracter;		//Definir variables.
	Definir a, b, c Como Real;
	Dimension nombres(100);
	Escribir "¿Cuántos nombres va a ingresar?";
	Leer a;										//Número de nombres.
	Para b<-1 hasta a Con Paso 1 Hacer
		Escribir "Ingrese el nombre #", b;
		Leer nombres(b);					 //Ingresar los nombres.
	FinPara
	Para b <- 1 Hasta a-1 Con Paso 1 Hacer //Ordenamiento burbuja.
        Para c <- 1 Hasta a-1 Con Paso 1 Hacer
            Si nombres[c] > nombres[c+1] Entonces
                temp <- nombres[c+1];
                nombres[c+1] <- nombres[c];
                nombres[c] <- temp;
            FinSi
        FinPara
    FinPara
	Para b<-1 hasta a Con Paso 1 Hacer
		Escribir nombres(b);		//Escribe los nombres ordenados.
	FinPara
FinProceso