Proceso sin_titulo
	definir dia,mes,ano como real;Escribir "ingrese el dia";leer dia;Escribir "ingresa el mes";leer mes;Escribir "ingresa el año";leer ano;
	Si (ano > 0) Y (mes >= 1) Y (mes <= 12) 
		Entonces Escribir "nada ";SiNo escribir "la fecha es invalida";finsi
		segun mes Hacer
			caso 1,3,5,7,8,10,12:
				si ((dia>=1))  Entonces
					escribir "laa fecha es valida";
				SiNo
					escribir "el dia ingresado es invalido";
				FinSi
				si ((dia <=31))  Entonces
					escribir "laa fecha es valida";
				SiNo
					escribir "el dia ingresado es invalido";
				FinSi
			caso 4,6,9,11:
				Si (dia >= 1) Y (dia <= 30) 
					Entonces Escribir "La fecha es válida.";Sino Escribir "El dia ingresado no es válido.";FinSi
				caso 2:
			FinSegun
			
					si ((ano mod 4=0) y (ano mod 100<>0)) o (anp mod 400=0) entonces
					finsi
					si (dia >=1) y (dia <=29) Entonces
						escribir "escribir la fecha es valida";sino escribir "el dia ingresado no es valido";finsi
FinProceso
