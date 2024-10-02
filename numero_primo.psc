Proceso nprimo
	Definir n Como entero;
	escribir "escriba el número para verificar si es primo";
	leer n;
	si n Mod 2=0 o n Mod 3=0 o n MOD 5=0 o n MOD 7=0 o n MOD 11=0 o n MOD 13=0 Entonces
		Si n=2 o n=3 o n=5 o n=7 o n=11 o n=13 Entonces
			escribir "es un número primo";
		SiNo
			Escribir "no es un número primo";
		FinSi
	SiNo
		escribir "es un número primo";
	FinSi
FinProceso
