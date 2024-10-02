SubProceso tabla1 <- tabla0 ( vida ) //Subproceso para escribir la tabla con sus valores numéricos.
	Definir a, b como real; b<-0;
	Para a<-0 hasta 1 Con Paso 1 Hacer
		Escribir "   ",vida[a,b],"  ||  ",vida[a,b+1],"  ||  ",vida[a,b+2],"  ||  ", vida[a,b+3],"  ||  ",vida[a,b+4];
		Escribir " =====++=====++======++=====++=====";
	FinPara
	Para a<-2 hasta 4 Con Paso 1 Hacer
		Escribir "   ",vida[a,b]," ||  ",vida[a,b+1]," ||  ",vida[a,b+2]," ||  ", vida[a,b+3],"  || ",vida[a,b+4];
		Escribir " =====++=====++======++=====++=====";
	FinPara
FinSubProceso
SubProceso tabla2 <- tabla ( celdas, vida ) //Subproceso para leer y transformar las celdas a vivas y escribir la tabla con caracteres.
	Definir a, b, vivo, tabla1 como real;
	Definir seguir Como Logico; seguir<-Verdadero; vivo<-99;
	Mientras seguir=Verdadero Hacer
		Mientras vivo<>0 Hacer
			Escribir "Ingrese los números"; Leer vivo; //Ingresar los valores para convertir a "vivas" las celdas.
			Si vivo<0 Entonces
				Escribir "Debe ser un número positivo";Esperar 3 Segundos; //Verificar que sea positivo (válido).
			SiNo
				Para a<-0 hasta 4 Con Paso 1 Hacer
					Para b<-0 hasta 4 Con Paso 1 Hacer
						si vivo=vida(a,b) Entonces
							vida(a,b)<-0;
						FinSi
					FinPara
				FinPara
			FinSi
			b<-0;Borrar Pantalla;
			tabla1 <- tabla0 ( vida ); //Muestra la tabla actualizada.
		FinMientras
		Si vivo=0 Entonces
			seguir<-Falso; //El bucle acaba si se escribe "0" en la variable "vivo".
		FinSi
	FinMientras
	Para a<-0 hasta 4 Con Paso 1 Hacer
		Para b<-0 hasta 4 Con Paso 1 Hacer
			Si vida(a,b)=0 Entonces
				celdas(a,b)<-"V"; //Transforma las celdas vivas (0) en un caracter (V) para su comprensión.
			SiNo
				celdas(a,b)<-"M"; //Transforma las celdas muertas (<>0) en un caracter (M) para su comprensión.
			FinSi
		FinPara
	FinPara
	b<-0; Borrar Pantalla; //Borra pantallas y actualiza la tabla con los caracteres.
	Para a<-0 hasta 1 Con Paso 1 Hacer
		Escribir "   ",celdas[a,b],"  ||  ",celdas[a,b+1],"  ||  ",celdas[a,b+2],"  ||  ", celdas[a,b+3],"  ||  ",celdas[a,b+4];
		Escribir " =====++=====++======++=====++=====";
	FinPara
	Para a<-2 hasta 4 Con Paso 1 Hacer
		Escribir "   ",celdas[a,b],"  ||  ",celdas[a,b+1],"  ||  ",celdas[a,b+2],"  ||  ", celdas[a,b+3],"  ||  ",celdas[a,b+4];
		Escribir " =====++=====++======++=====++=====";
	FinPara
FinSubProceso
Proceso Juego_VidaConway									//ALGORITMO  PRINCIPAL.
	Definir a, b, v, vida, vivo, vecinos_vivos, i, j, estable, tabla1, igual Como Real; Definir seguir Como Logico;
	Definir celdas, tabla2, almacen como caracter; Dimension vida(5,5), celdas(5,5), almacen(5,5); v<-1;
	Escribir "Ingrese los números de las celdas para definirlas como vivas";
	Escribir "si no escribe el número de una celda, se definirá como muerta";
	Escribir "Escriba 0 para terminar de definir las celdas como vivas.";
	Para a<-0 hasta 4 Con Paso 1 Hacer
		Para b<-0 hasta 4 Con Paso 1 Hacer
			vida(a,b)<-v;						//Enumera las celdas.
			v<-v+1;
		FinPara
	FinPara
	b<-0; v<-0; vivo<-99; seguir<-Verdadero;
	tabla1 <- tabla0 ( vida ); //Muestra la tabla inicial.
	tabla2 <- tabla ( celdas, vida ); //Actualiza la tabla y transforma los valores numericos de esta en caracteres (V o M).
	seguir<-Verdadero; Esperar 3 Segundos; //Muestra la tabla convertida en caracteres por 3 segundos.
	Mientras seguir=Verdadero Hacer //Comienza a actualizar la tabla según las reglas del juego.
		Borrar Pantalla;
		Para a<-0 hasta 4 Con Paso 1 Hacer
			Para b<-0 hasta 4 Con Paso 1 Hacer
				almacen(a,b)<-celdas(a,b);
			FinPara
		FinPara
		Para a <- 0 hasta 4 Hacer
            Para b <- 0 hasta 4 Hacer //Cuenta las celdas vecinas vivas en orden.
                vecinos_vivos <- 0; // Resetear contador de vecinos
                Para i<-a-1 Hasta a+1 Hacer
                    Para j<-b-1 Hasta b+1 Hacer
                        Si i>=0 y i<=4 y j>=0 y j<=4 Entonces // Verificar si la posición está dentro de la matriz
                            Si i<>a o j<>b Entonces // No contar la celda actual
                                Si celdas(i, j) = "V" Entonces
                                    vecinos_vivos <- vecinos_vivos + 1;
                                FinSi
                            FinSi
                        FinSi
                    FinPara
                FinPara						 //APLICA LAS REGLAS DEL JUEGO:
                Si celdas(a, b) = "V" Entonces // Si la celda está viva
                    Si vecinos_vivos = 2 o vecinos_vivos = 3 Entonces // y tiene 2 o 3 vecinos vivos.
                        celdas(a, b) <- "V"; // Permanece viva
                    SiNo
                        celdas(a, b) <- "M"; // Sino muere
                    FinSi
                SiNo // Si la celda está muerta
                    Si vecinos_vivos = 3 Entonces // y tiene 3 vecinos vivos:
                        celdas(a, b) <- "V"; // Revive
                    SiNo
                        celdas(a, b) <- "M"; // Sino sigue muerta
                    FinSi
                FinSi
            FinPara
        FinPara
		b<-0;
		Para a<-0 hasta 1 Con Paso 1 Hacer //Actualiza las celdas y muestra la tabla.
			Escribir "   ",celdas[a,b],"  ||  ",celdas[a,b+1],"  ||  ",celdas[a,b+2],"  ||  ", celdas[a,b+3],"  ||  ",celdas[a,b+4];
			Escribir " =====++=====++======++=====++=====";
		FinPara
		Para a<-2 hasta 4 Con Paso 1 Hacer
			Escribir "   ",celdas[a,b],"  ||  ",celdas[a,b+1],"  ||  ",celdas[a,b+2],"  ||  ", celdas[a,b+3],"  ||  ",celdas[a,b+4];
			Escribir " =====++=====++======++=====++=====";
		FinPara
		estable<-0; igual<-0; v<-v+1;								//Da el valor de 0 a "estable" y a "igual", se cuenta una actualización
		Escribir "¿Desea seguir con el juego? (VERDADERO O FALSO)";
		Leer seguir;												//Pregunta al usuario si desea que el juego continúe.
		Si v>=4 Entonces										//Si la tabla se ha actualizado por las reglas del juego 3 o más veces:
			Para a<-0 hasta 4 Con Paso 1 Hacer
				Para b<-0 hasta 4 Con Paso 1 Hacer
					Si almacen(a,b)<>celdas(a,b) Entonces		//Si las celdas no son iguales a su valor anterior:
						estable<-estable+1;						//Se suma 1 a la variable "estable".
					SiNo
						igual<-igual+1;							//Sino, se suma 1 a la variable "igual".
					FinSi
				FinPara
			FinPara
		FinSi
		Si estable=0 y igual=25 y v>=5 Entonces //Quedando asi: si todas las celdas son iguales a su valor anterior (igual=25)
			seguir<-falso;						//si el valor de ninguna celda es diferente de su valor anterior y si van 5 o más intentos.
		FinSi									//significa que las celdas se han estabilizado y su valor no va a cambiar.
	FinMientras								//por lo tanto: El juego ha terminado.
	Escribir "El juego ha terminado o el estado de las celdas se ha estabilizado"; //El juego ha terminado.
FinProceso