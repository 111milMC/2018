Algoritmo Ejercicio11_Clase3
	Definir sueldoIngresado, sueldo, long, d, u, cantCien, cantCincuenta, cantVeinte,cantDiez, cantCinco, cantDos, cantUno Como Entero
	Definir cadSueldo como Caracter
	Definir centenas, decenas, unidades como  Caracter
	
	sueldo <- 0
	
	cantCincuenta<-0
	cantCien<-0
	cantVeinte<-0
	cantDiez<- 0
	cantCinco<- 0
	cantDos<-0
	cantUno<-0
	
	
	Escribir "Ingrese los sueldos a pagar. (para salir ingrese 0(cero) o menor"
	Leer sueldoIngresado
	Mientras sueldoIngresado > 0 Hacer
		sueldo<-sueldo + sueldoIngresado
		Escribir "Ingrese otro sueldo a pagar. (para salir ingrese 0(cero)"
		Leer sueldoIngresado
	Fin Mientras
	
	
	cadSueldo <- ConvertirATexto(sueldo)
	long <- Longitud(cadSueldo)
	centenas <- SubCadena(cadSueldo,0,long - 3)
	decenas <- SubCadena(cadSueldo,long - 2,long -2)
	unidades<- SubCadena(cadSueldo,long - 1,long)
	
	d<- (ConvertirANumero(decenas) * 10)
	u<- ConvertirANumero(unidades)
	
	cantCien<- ConvertirANumero(centenas)
	
	Mientras d >= 50 Hacer
		d<- d-50
		cantCincuenta<- cantCincuenta +1
	Fin Mientras
	
	Mientras d >= 20 Hacer
		d<- d-20
		cantVeinte<- cantVeinte +1
	Fin Mientras
	
	Mientras d >= 10 Hacer
		d<- d-10
		cantDiez<- cantDiez +1
	Fin Mientras
	
	Mientras u >= 5 Hacer
		u<- u-5
		cantCinco<- cantCinco +1
	Fin Mientras
	
	Mientras u >= 2 Hacer
		u<- u-2
		cantDos<- cantDos +1
	Fin Mientras
	
	Mientras u >= 1 Hacer
		u<- u-1
		cantUno<- cantUno +1
	Fin Mientras
	
	Escribir "El sueldo total es: $" sueldo
	
	Si cantCien > 0 Entonces
		Escribir "Cantidad de billetes de $100: " cantCien
	Fin Si
	
	Si cantCincuenta > 0 Entonces
		Escribir "Cantidad de billetes $50: " cantCincuenta
	Fin Si
	
	Si cantVeinte > 0 Entonces
		Escribir "Cantidad de billetes $20: " cantVeinte
	Fin Si
	
	Si cantDiez > 0 Entonces
		Escribir "Cantidad de billetes $10: " cantDiez
	Fin Si
	
	Si cantCinco > 0 Entonces
		Escribir "Cantidad de billetes $5: " cantCinco
	Fin Si
	
	Si cantDos > 0 Entonces
		Escribir "Cantidad de billetes $2: " cantDos
	Fin Si
	
	Si cantUno > 0 Entonces
		Escribir "Cantidad de billetes $1: " cantUno
	Fin Si
	
FinAlgoritmo
