Algoritmo Ejercicio19_DiogoMolina
	Definir dia,mes Como Entero;
	Definir signo Como Cadena;
	Escribir "Ingrese su dia de nacimiento";
	Leer dia;
	Escribir "Ingrese su mes de nacimiento";
	Leer mes;
	Segun mes Hacer
		1:
            Si dia >= 1 Y dia <= 19 Entonces
                signo <- "Capricornio"
            Sino
                signo <- "Acuario"
            FinSi
        2:
            Si dia >= 1 Y dia <= 18 Entonces
                signo <- "Acuario"
            Sino
                signo <- "Piscis"
            FinSi
        3:
            Si dia >= 1 Y dia <= 20 Entonces
                signo <- "Piscis"
            Sino
                signo <- "Aries"
            FinSi
        4:
            Si dia >= 1 Y dia <= 19 Entonces
                signo <- "Aries"
            Sino
                signo <- "Tauro"
            FinSi
        5:
            Si dia >= 1 Y dia <= 20 Entonces
                signo <- "Tauro"
            Sino
                signo <- "Géminis"
            FinSi
        6:
            Si dia >= 1 Y dia <= 20 Entonces
                signo <- "Géminis"
            Sino
                signo <- "Cáncer"
            FinSi
        7:
            Si dia >= 1 Y dia <= 22 Entonces
                signo <- "Cáncer"
            Sino
                signo <- "Leo"
            FinSi
        8:
            Si dia >= 1 Y dia <= 22 Entonces
                signo <- "Leo"
            Sino
                signo <- "Virgo"
            FinSi
        9:
            Si dia >= 1 Y dia <= 22 Entonces
                signo <- "Virgo"
            Sino
                signo <- "Libra"
            FinSi
        10:
            Si dia >= 1 Y dia <= 22 Entonces
                signo <- "Libra"
            Sino
                signo <- "Escorpio"
            FinSi
        11:
            Si dia >= 1 Y dia <= 21 Entonces
                signo <- "Escorpio"
            Sino
                signo <- "Sagitario"
            FinSi
        12:
            Si dia >= 1 Y dia <= 21 Entonces
                signo <- "Sagitario"
            Sino
                signo <- "Capricornio"
            FinSi
    FinSegun
	Escribir "La persona nacida el", dia,"/", mes,"tiene el signo zodiacal",signo ;
FinAlgoritmo