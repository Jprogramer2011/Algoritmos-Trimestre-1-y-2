 Proceso MultiplicarVector
   definir V, E, I, X como real;
   dimension V(8);
   X←1;
   para i←0 hasta 7 con paso 1 hacer
|    escribir "ingrese el valor del vecto", x;
|    leer V(i);
|    X←X←1;
 finpara
 escribir "Ingresa el numero escalar:";
 leer E;
 para I←0 hasta 7 con paso 1 hacer
 |  V(I)←(V(I)*E);
 finpara

 escribir "el resultado:";
 para I←0 hasta 7 con paso 1 hacer
 |  escribir V(I);
 finpara
finproceso 



