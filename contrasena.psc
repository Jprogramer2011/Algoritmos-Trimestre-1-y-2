Proceso contrasena
	Definir c Como Caracter; Definir i Como Entero; Definir a Como Logico;
	i<-1; a<-falso;
	para i<-1 Hasta 3 Con Paso 1 Hacer
		si a=Falso Entonces
			Escribir "Ingrese la contraseña"; Leer c;
			si c="7359" Entonces
				Escribir "Bienvenido"; a<-Verdadero;
			SiNo
				Escribir "contraseña incorrecta";
			FinSi
			si i=3 y a=falso Entonces
				a<-verdadero; i<-i+1;
			FinSi
		SiNo
			i<-3;
		FinSi
	FinPara
	si i=5 Entonces
		Escribir "Demasiados intentos fallidos, intente más tarde";
	FinSi
FinProceso