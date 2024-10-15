Proceso CalcularPromedio
    Definir suma Como Real
    Definir numero Como Real
    Definir cantidad Como Entero
    Definir promedio Como Real
    
    suma <- 0  // Inicializamos la suma en 0
    cantidad <- 0  // Inicializamos la cantidad de calificaciones en 0
	
    Escribir "Ingrese las calificaciones (ingrese -1 para terminar):"
    
    Repetir
        Leer numero  // Leer la calificación ingresada
        
        Si numero <> -1 Entonces
            suma <- suma + numero  // Sumar la calificación a la suma total
            cantidad <- cantidad + 1  // Incrementar el contador de calificaciones
        Fin Si
    Hasta Que numero = -1  // Terminar cuando el usuario ingrese -1
	
    Si cantidad > 0 Entonces
        promedio <- suma / cantidad  // Calcular el promedio
		
        Escribir "El promedio es: ", promedio  // Mostrar el promedio
		
        Si promedio < 7 Entonces
            Escribir "Reprobado"  // Mensaje si el promedio es menor que 7
        Sino
            Escribir "Aprobado"  // Mensaje si el promedio es mayor o igual a 7
        Fin Si
    Sino
        Escribir "No se ingresaron calificaciones."  // Mensaje si no se ingresaron calificaciones
    Fin Si
Fin Proceso