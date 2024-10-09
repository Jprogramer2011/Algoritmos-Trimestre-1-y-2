Proceso SumaDeVectores
    Definir vector1, vector2, vectorResultado Como Entero;
    Definir i Como Entero;
    // Inicialización de los vectores
    Dimensionar vector1(5);
    Dimensionar vector2(5);
    Dimensionar vectorResultado(5);
    // Ingreso de datos para el primer vector
    Escribir 'Ingrese 3 números para el primer vector:';
    Para i<-1 Hasta 3 Hacer
        Escribir 'Número ', i, ': ';
        Leer vector1[i];
    FinPara
    // Ingreso de datos para el segundo vector
    Escribir 'Ingrese 3 números para el segundo vector:';
    Para i<-1 Hasta 3 Hacer
        Escribir 'Número ', i, ': ';
        Leer vector2[i];
    FinPara
    // Suma de los vectores
    Para i<-1 Hasta 3 Hacer
        vectorResultado[i] <- vector1[i]+vector2[i];
    FinPara
    // Mostrar el resultado
    Escribir 'El resultado de la suma de los dos vectores es:';
    Para i<-1 Hasta 3 Hacer
        Escribir 'Elemento ', i, ': ', vectorResultado[i];
    FinPara
FinProceso
	

