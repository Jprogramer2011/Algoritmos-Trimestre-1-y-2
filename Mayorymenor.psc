Proceso MyM
Definir n, a, b, temp como real; Dimension n(3);
Escribir "Ingrese 3 números para verificar cuál es el mayor y el menor";
Leer n(0), n(1), n(2);
Para b<-0 hasta 1 con paso 1 hacer
Para a<-0 hasta 2 con paso 1 hacer
Si a<>2 entonces
Si n(a)<n(a+1) entonces
temp<-n(a);
n(a)<-n(a+1);
n(a+1)<-temp;
FinSi
FinSi
FinPara
FinPara
Escribir "El número mayor es ", n(0), " y el número menor es ", n(2);
FinProceso
