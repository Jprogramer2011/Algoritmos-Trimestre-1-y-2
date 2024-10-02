Proceso Dados
	Definir dado, registro, a, b Como Entero;
	Definir lanzar Como Logico;
	Dimension registro(1000);
	lanzar<-Verdadero; a<-0;
	Mientras lanzar=Verdadero Hacer
		Escribir "¿Desea lanzar el dado? (VERDADERO O FALSO)";
		Leer lanzar;
		Si lanzar=Verdadero Entonces
			dado<-azar(6)+1;
			Escribir "El dado marcó ", dado;
			registro(a)<-dado; a<-a+1;
		FinSi
	FinMientras
	si a<>0 Entonces
		Escribir "Los dados dieron estos valores en este orden:";
		para b<-0 hasta a-1 Con Paso 1 Hacer
			Escribir registro(b);
		FinPara
	FinSi
FinProceso