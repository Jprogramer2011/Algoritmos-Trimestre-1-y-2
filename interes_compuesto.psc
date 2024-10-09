Proceso interes_compuesto
	Definir inicial, final, meses, porcentaje, istotal como real;
	Escribir "Ingrese la capital inicial";
	Leer inicial;
	Escribir "Ingrese los meses";
	Leer meses;
	Escribir "Ingrese el porcentaje de interés (sin el signo %)";
	Leer porcentaje;
	porcentaje<-porcentaje/100;
	final<-inicial*(1+porcentaje)^meses;
	istotal<-final-inicial;
	Escribir "El interés compuesto total es ", istotal;
	Escribir "El valor final es ", final;
FinProceso
