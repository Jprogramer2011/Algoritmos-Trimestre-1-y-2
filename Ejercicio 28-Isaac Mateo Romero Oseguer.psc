Proceso Isaac_Romero
	Definir nombre,lista,aux Como Cadenas;
    Definir se_repite Como Logico;
    Definir cant,i,j,pos_menor Como Enteros;
    Dimension lista[200];
    
    Escribir "Ingrese los nombres (DEJAR ESPACIO EN BLANCO PARA ORDENAL LA LISTA):";
    cant<-0;
    Leer nombre;
    Mientras nombre<>"" Hacer
        lista[cant]<-nombre;
        cant<-cant+1;
        Repetir
            Leer nombre;
            se_repite<-Falso;
            Para i<-0 Hasta cant-1 Hacer
                Si nombre=lista[i] Entonces
                    se_repite<-Verdadero;
                FinSi
            FinPara
        Hasta Que ~ se_repite
    FinMientras
    Para i<-0 Hasta cant-2 Hacer
        pos_menor<-i;
        Para j<-i+1 Hasta cant-1 Hacer
            Si lista[j]<lista[pos_menor] Entonces
                pos_menor<-j;
            FinSi
        FinPara
        aux<-lista[i];
        lista[i]<-lista[pos_menor];
        lista[pos_menor]<-aux;
    FinPara    
    Escribir "La lista ordenada es:";
    Para i<-0 Hasta cant-1 Hacer
        Escribir "   ",lista[i];
    FinPara
FinProceso
