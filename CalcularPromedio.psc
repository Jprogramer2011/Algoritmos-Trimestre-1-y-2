Algoritmo CalcularPromedio
	
    // 1. Declaración de variables
    Definir suma Como Real;
    Definir temp Como Real;
    Definir promedio Como Real;
    Definir i Como Entero;
    
    // 2. Inicialización de variables
    suma <- 0;
	
    // 3. Entrada de datos y suma
    Para i <- 1 Hasta 15 Hacer
        Escribir "Ingrese el número ", i, ": ";
        Leer temp;
        suma <- suma + temp;
    FinPara
	
    // 4. Cálculo del promedio
    promedio <- suma / 15;
	
    // 5. Salida del promedio
    Escribir "El promedio es: ", promedio;
	
FinAlgoritmo
