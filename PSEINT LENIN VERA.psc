Algoritmo OrdenarVector
    // Declaración de variables
    Dimension numeros[5]; // Vector de 5 posiciones
      Definir i, j  Como numerica; // Definicion de las variables como numericas 
	
    // Ingreso de datos
    Para i <- 0 Hasta 4 Con Paso 1 Hacer
        Escribir "Ingresa el número ", i + 1, ":";
        ;
    FinPara
	
    // Ordenamiento burbuja
    Para i <- 0 Hasta 3 Con Paso 1 Hacer
        Para j <- 0 Hasta 3 - i Con Paso 1 Hacer
            Si numeros[j] > numeros[j + 1] Entonces
                // Intercambio de valores
                aux <- numeros[j];
                numeros[j] <- numeros[j + 1];
                numeros[j + 1] <- aux;
            FinSi
        FinPara
    FinPara
	
    // Mostrar el vector ordenado horizontalmente
    Escribir "Vector ordenado horizontalmente:";
    Para i <- 0 Hasta 4 Con Paso 1 Hacer
        Escribir Sin Saltar numeros[i], " ";
    FinPara
	
    // Mostrar el vector ordenado verticalmente
    Escribir "";
    Escribir "Vector ordenado verticalmente:";
    Para i <- 0 Hasta 4 Con Paso 1 Hacer
        Escribir numeros[i];
    FinPara
FinAlgoritmo