Algoritmo sin_titulo
	Definir ingresado, letras, guion Como Caracter;	//ingresado=letra ingresada  letras=letra por letra.
	Definir fallos, a, b, fallosp, aciertos Como entero; Dimension letras(14), guion(14);	//a y b son para los bucles.
	Definir encontrado Como Logico; aciertos<-0;		//Da un valor de 0 a los aciertos.
	letras(0)<-"n";	letras(1)<-"i";	letras(2)<-"t";	letras(3)<-"r";	letras(4)<-"o";
	letras(5)<-"g";	letras(6)<-"l";	letras(7)<-"i";	letras(8)<-"c";	letras(9)<-"e";
	letras(10)<-"r";	letras(11)<-"i";  letras(12)<-"n";	letras(13)<-"a"; fallos<-0; //Da un valor de 0 a fallos.
	Escribir "Bienvenido al juego de ahorcado, ingrese la palabra letra por letra, tiene un máximo de 7 errores";
	Escribir " ";			//Deja un espacio para la pista.
	Escribir "La palabra secreta es un compuesto utilizado para la fabricación de dinamita y es altamente explosivo";
	Escribir "Además, este compuesto reacciona con un mínimo golpe";
	Escribir " ";			//Deja un espacio para los guiones bajos.
	Esperar 8 Segundos;
	Para a<-0 hasta 13 Con Paso 1 Hacer
		guion(a)<-"_ ";						//Asigna "_" a guion.
	FinPara
	Repetir
		Esperar 4 segundos;
		Borrar Pantalla;
		Escribir "Ingrese la letra que usted crea que está en la palabra";
		Escribir " "; //Deja un espacio para los guiones y las letras.
		Para a<-0 hasta 12 Con Paso 1 Hacer
			Escribir guion(a) Sin Saltar; 	//Escribe guion (un guion o una letra) 13 veces.
		FinPara
		Escribir guion(13);		//Escribe guion(13): si lo pongo en Sin Saltar, lee la letra al lado de los guiones (se ve mal)
		Leer ingresado;							//Lee la letra ingresada.
		ingresado<-Minusculas(ingresado);		//transforma la letra en minúscula
		encontrado<-falso; fallosp<-0;			//Resetea encontrado, y los fallos a una letra (fallosp)
		Repetir
			para b<-0 Hasta 13 Con Paso 1 Hacer
				Si ingresado=letras(b) Entonces
					guion(b)<-letras(b);			//Si está en la palabra, reemplaza un guion por esa letra en su respectivo lugar.
				SiNo
					fallosp<-fallosp+1;			//Sino, suma un fallo a la letra.
				FinSi
			FinPara
			si fallosp=14 Entonces
				fallos<-fallos+1;				//Si la letra ingresada <> a ninguna letra, entonces suma un fallo.
				encontrado<-Verdadero;
				Escribir "La letra que ingresaste no pertenece a la palabra";
			SiNo
				encontrado<-Verdadero;			//Sino, sale del bucle y cuenta un acierto.
				aciertos<-aciertos+1;
			FinSi
		Hasta Que encontrado=Verdadero
	Hasta Que fallos>7 o aciertos=10		//Si ha fallado más de 7 veces o ha acertado 10 veces gana o pierde respectivamente.
	Si aciertos=10 Entonces
		Borrar Pantalla;
		Escribir "Nitroglicerina";			//Muestra la palabra y da a saber que ha ganado.
		Escribir " ";
		Escribir "Felicidades, adivinaste la palabra";
	SiNo
		Escribir "Lo siento, perdiste";	//Informa al usuario que ha perdido.
	FinSi
FinAlgoritmo