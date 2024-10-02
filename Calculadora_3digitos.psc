Algoritmo Calculadora_3digitos
		Escribir 'Calculadora con 3 dígitos';
		Definir O_ Como Caracter;
		Definir S Como Logico;
		Definir V1, V2, V3 Como Real;
		Definir R como Real ;
		S <- Verdadero;
		Repetir
			Esperar 1 Segundos;
			Escribir 'Cuál es la operación que desea realizar';
			Esperar 1 Segundos;
			Escribir 'Escribirlo en minúscula sin tilde, para salir, escriba salir';
			esperar 2 segundos;
			Leer O_;
			
			Si O_='suma' Entonces
				Escribir 'Ingrese el valor número 1';
				Leer V1;
				Escribir 'Ingrese el valor número 2';
				Leer V2;
				Escribir 'Ingrese el valor número 3';
				Leer V3;
				R <- (V1+V2+V3);
				Escribir "el resultado es ", R;
				
			Sino 
				Si O_='resta' Entonces
					Escribir 'Ingrese el valor número 1';
					Leer V1;
					Escribir 'Ingrese el valor número 2';
					Leer V2;
					Escribir 'Ingrese el valor número 3';
					Leer V3;
					R <- (V1-V2-V3);
					Escribir "el resultado es ", R;
				Sino 
					Si O_='multiplicacion' Entonces
						Escribir 'Ingrese el valor número 1';
						Leer V1;
						Escribir 'Ingrese el valor número 2';
						Leer V2;
						Escribir 'Ingrese el valor número 3';
						Leer V3;
						R <- (V1*V2*V3);
						Escribir "el resultado es ", R;
					Sino 
						Si O_='division' Entonces
							Escribir 'Ingrese el valor número 1';
							Leer V1;
							Escribir 'Ingrese el valor número 2';
							Leer V2;
							Escribir 'Ingrese el valor número 3';
							Leer V3;
							R <- (V1/V2/V3);
							Escribir "el resultado es ", R;
						Sino 
							Si O_='salir' Entonces
								Escribir 'Adiós';
								S <- Falso;
							Sino 
								Escribir "ERROR";
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		Hasta Que S = Falso
FinAlgoritmo