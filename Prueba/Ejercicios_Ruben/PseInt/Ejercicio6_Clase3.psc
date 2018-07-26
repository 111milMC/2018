Algoritmo Ejercicio6_Clase3
	Definir nro, cantidad, suma Como Entero
	Definir promedio como Real
	nro<-0
	suma<-0
	cantidad<-0
	promedio<-0
	Escribir "***********************************************"
	Escribir "* Para salir ingrese un numero menor a cero 0 *"
	Escribir "***********************************************"
	
	Repetir
		Escribir "Ingrese un numero: "
		Leer nro
		Si nro > 0 Entonces
			suma<- suma + nro
			cantidad<- cantidad + 1
		Fin Si
	Hasta Que nro < 0
	
	Escribir "*********************************************************"
	Escribir "* El resultado de la suma es: " suma 
	Escribir "* Cantidad de numeros ingresados es: " cantidad 
	
	Si cantidad > 0 Entonces
		promedio<- suma / cantidad
		Escribir "* El Promedio es: " promedio 
	SiNo
		Escribir "* No se ingreso ningun numero"
	Fin Si
	Escribir "*********************************************************"
	
FinAlgoritmo
