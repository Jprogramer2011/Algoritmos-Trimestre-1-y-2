Algoritmo Palidromo
	// Hecho por George Fernando Pelaez Carrera
	Escribir 'Escribe una palabra para identificar si es palidromo'
	Leer palabra
	long <- Longitud(palabra)
	inversa <- ''
	Para i<-long Hasta 1 Con Paso -1 Hacer
		inversa <- inversa+Subcadena(palabra,i,i)
	FinPara
	Escribir inversa
	Si palabra=inversa Entonces
		Escribir 'su palabra es un palidromo'
	SiNo
		Escribir 'su palabra NO es un palidromo'
	FinSi
FinAlgoritmo
