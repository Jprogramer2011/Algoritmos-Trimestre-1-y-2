Proceso FaD
	Definir n, d, r como real;
	Escribir "Ingrese el numerador de una fracción";
	Leer n;
	Escribir "Ingrese el denominador de la fracción";
	Leer d;
	Si d=0 Entonces
		Escribir "Error. el denominador no puede ser 0";
	SiNo
		r<-n/d;
		Escribir "El número decimal de la fracción es ", r;
	FinSi
FinProceso