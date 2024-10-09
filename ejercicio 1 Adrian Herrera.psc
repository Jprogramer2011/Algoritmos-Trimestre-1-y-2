Algoritmo VerificarConsonante
	Definir caracter Como Cadena
	Escribir 'Ingrese un carácter:'
	Leer caracter
	// Verificar si el carácter es una letra y no es una vocal
	Si (caracter>='a' Y caracter<='z') Y  NO (caracter=='a' O caracter=='e' O caracter=='i' O caracter=='o' O caracter=='u') Entonces
		Escribir 'El carácter ingresado no es una  vocal'
	SiNo
		Escribir 'El carácter ingresado  es una vocal.'
	FinSi
	Si (caracter>='f' Y caracter<='z') Y  NO (caracter=='a' O caracter=='e' O caracter=='i' O caracter=='o' O caracter=='u') Entonces
		Escribir 'El carácter ingresado  es una consonante '
	SiNo
		Escribir 'El carácter ingresado  no es una consonante.'
	FinSi
FinAlgoritmo
