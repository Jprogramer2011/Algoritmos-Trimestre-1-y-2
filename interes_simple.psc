Proceso interes_simple
	Definir inicial, final, meses, porcentaje, is, istotal como real;
	Escribir "Ingrese la capital inicial";
	Leer inicial;
	Escribir "Ingrese los meses";
	Leer meses;
	Escribir "Ingrese el porcentaje de interés (sin el signo %)";
	Leer porcentaje;
	porcentaje<-porcentaje/100;
	is<-inicial*porcentaje;
	istotal<-is*meses;
	final<-inicial+((inicial*porcentaje)*meses);
	Escribir "El interés simple es ", is;
	Escribir "El valor final es ", final;
	Escribir "El interés simple total es ", istotal;
FinProceso
