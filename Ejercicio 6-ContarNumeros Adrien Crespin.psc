Algoritmo ContarNumeros
	Dimension vector[20];
	Definir i, contador, numero_a_buscar Como Entero;
	Definir vector Como Entero;
	contador <- 0;
	Para i <- 1 hasta 20 con paso 1 Hacer
		Escribir "Ingresa el numero en la posicion ", i ,":";
		leer vector[i];
	FinPara
	Escribir "Ingresa un numero adicional para contar cuantas veces aparece en el vector:";
	leer numero_a_buscar;
	Para i<-1 hasta 20 con paso 1 Hacer
		si vector[i] = numero_a_buscar Entonces
			contador <- contador + 1;
		FinSi
	FinPara
	Escribir "El numero ", numero_a_buscar, " aparece ", contador, " veces en el vector.";
FinAlgoritmo
