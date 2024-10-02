Algoritmo Promedio
	definir c1,c2,c3,c4,p Como Real;
	escribir "Ingrese su primera calificación";
	leer c1;
	escribir "Ingrese su segunda calificación";
	leer c2;
	escribir "Ingrese su tercera calificación";
	leer c3;
	escribir "Ingrese su cuarta calificación";
	leer c4;
	p<- ((c1+c2+c3+c4)/4);
	Si p<4 Entonces
	 Escribir "Lo siento, te quedaste de año, pues tu promedio es ", p;
	SiNo
	  Si p>=4 y p<7 Entonces
		 Escribir "Te quedaste supletorio, pues tu promedio es ", p;
	  SiNo
		 Escribir "Felicidades, pasate de año, tu promedio es ", p;
	 FinSi
	FinSi
FinAlgoritmo
