Proceso Rompecabezas_letras
	Definir letras, ingresado, almacen Como Caracter;
	Definir a, b  Como Entero;
	Dimension letras(12);
	letras(0)<-"O"; 	letras(1)<-"r"; 	letras(2)<-"n"; 	letras(3)<-"i";
	letras(4)<-"t"; 	letras(5)<-"o"; 	letras(6)<-"r"; 	letras(7)<-"r";
	letras(8)<-"i"; 	letras(9)<-"n"; letras(10)<-"c"; letras(11)<-"o";
	Para b<-0 hasta 3 Hacer
		Para a<-0 hasta 10 Hacer
			Si letras(a)>letras(a+1) Entonces
				almacen<-letras(a+1);
				letras(a+1)<-letras(a);
				letras(a)<-almacen;
			FinSi
		FinPara
	FinPara
	Para a<-11 hasta 1 Con Paso -1 Hacer
		Escribir letras(a), " " Sin Saltar;
	FinPara
	Escribir letras(0);
	Escribir "Ingrese una palabra a partir de las letras mezcladas.";
	Leer ingresado;
	Si ingresado="ornitorrinco" o ingresado="Ornitorrinco" Entonces
		Escribir "La palabra es correcta: la solución es Ornitorrinco";
	SiNo
		Escribir "Esa no es la solución, esa palabra es incorrecta";
	FinSi
FinProceso