Proceso recuperaciondeaportejuniorzapata
	definir dia,mes,ano como real;Escribir "ingrese el dia";leer dia;Escribir "ingresa el mes";leer mes;Escribir "ingresa el año";leer ano;
    Si (mes >= 01) Y (mes <= 12)  entonces Escribir "el mes es correcto ";SiNo escribir "el mes es incorrecto, la fecha es incorrecta.";finsi
		si (dia >=01) y (dia<=31)  entonces Escribir "el dia es correcto"; SiNo escribir "el dia es incorrecto, la fecha es incorrecta.";FinSi
			si (ano >=1000) y (ano <=2024) Entonces Escribir " el año es correcto"; sino escribir "el año es incorrecto, la fecha es incorrecta.";FinSi
FinProceso