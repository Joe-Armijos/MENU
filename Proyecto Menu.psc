//PROYECTO GRUPAL N2

//ESTRUCTURAS SELECTIVAS
// EJERCICIO 1 
//¿Siguiendo la prioridad de operadores, convierta a expresión matemática,
//resuelva e indique en cuál tipo de variable almacenará el resultado de las
//siguientes expresiones:
// entrada: v1,v2,v3,v4,v5
// proceso "poner los operadores y el resultado presentarlo"
funcion selectivas1()
	definir v1,v4,v5 Como logico
	definir v2,v3 Como Real 
	v1 = (5 + 3 * 2) + 9 > 3 * 5 * 14 % 3
	v2 = 2 *(4 - 10 + 8)/2* 36 *(1/2)
	v3 = 260 / 12 + 54 % 3 - 85 % 7
	v4 = (48 < 2 * 3) O (2 * 7 < 12)
	v5 = ((8 > 2) O(932 < 23)) Y 4 == 2
	
	escribir "v1=",v1
	escribir "v2=",v2
	escribir "v3=",v3
	escribir "v4=",v4
	escribir "v5=",v5
FinFuncion

//EJERCICIO 2
// Dados dos (2) números calcule la 
//suma, resta, multiplicación, división y módulo.
//entrada: x,y
//s,r,m,d
// "ingrese el valor de x"
// "ingrese el valor de y"
// s = x+y
// r = x-y
// m = x*y
// d = x/y
funcion selectivas2()
	definir x, ye Como Entero
	definir s,r,m,d Como Real
	escribir "ingrese el valor de x"
	leer x
	escribir "ingrese el valor de y"
	leer ye
	s = x+ye
	escribir x,"+",ye,"=",s
	r = x-ye
	escribir x,"-",ye,"=",r
	m = x*ye
	escribir x,"*",ye,"=",m
	d = x/ye
	escribir x,"/",ye,"=",d
FinFuncion

//EJERCICIO 3
//Dados tres (3) números, 
//Hacer una aplicación que calcule la resolvente.
//entrada: a,b,c
funcion selectivas3()
	definir a,b,c, discriminante como real
	definir x1,x2 como real
	escribir "ingrese el valor de a"
	leer a
	escribir "ingrese el valor de b"
	leer b
	escribir "ingrese el valor de c"
	leer c
	discriminante <- b^2 - 4 * a * c
	
	// Verificar casos
	si discriminante > 0 entonces
		x1 <- (-b + raiz(discriminante)) / (2 * a)
		x2 <- (-b - raiz(discriminante)) / (2 * a)
		Escribir "Las soluciones son:", x1, "y", x2
	sino si discriminante = 0 entonces
			x <- -b / (2 * a)
			Escribir "La solución es:", x
		sino
			Escribir "No hay soluciones reales"
		finsi	
	finsi		
	
FinFuncion
//EJERCICIO 4 
//Dados dos (2) lados de un triángulo en cm, 
//calcular la hipotenusa del mismo.
//entrada: a,b,h como real
//"ingrese el valor del lado a"
//"ingrese el valor del lado b"
// h = raiz((a*a)+(b*b))
// escribir "la hipotenusa es: ", h
Funcion selectivas4()
    // Pedir al usuario ingresar los lados del triángulo
    Escribir "Ingrese el primer lado del triángulo en cm:"
    Leer lado1
    Escribir "Ingrese el segundo lado del triángulo en cm:"
    Leer lado2
    // Calcular la hipotenusa
    hipotenusa <- raiz(lado1 * lado1 + lado2 * lado2)
    // Mostrar el resultado
    Escribir "La hipotenusa del triángulo es:", hipotenusa, "cm"
FinFuncion
//EJERCICIO 5
//Dado un (1) número, imprimir 0 si es par y 1 si es impar
//entrada: n
//"digite un valor"
//proceso: si n %2=0
//escribir "es par"
//sino si "es impar" 
funcion selectivas5()
	definir n Como Entero
	escribir "digite un numero"
	leer n
	si n%2=0
		escribir "es par"
	SiNo
		escribir "es impar"
	FinSi
FinFuncion

//EJERICCIO 6
funcion selectivas6()
	definir numeroBinario, digito, cantidadUnos,bitParidad Como Real
	escribir "ingrese los 4 digitos binarios"
	Leer numeroBinario
	cantidadUnos <- 0
	para digito=0 hasta numeroBinario hacer
		si digito es igual a 1 entonces
			cantidadUnos <- cantidadUnos + 1
		fin si
	fin para
	bitParidad <- cantidadUnos % 2
	Escribir "El bit de paridad es:", bitParidad
FinFuncion

//EJERCICIO 7
//Dado un (1) número de cuatro (4) dígitos imprimirlo por separado en unidades,decenas,
//centenas y unidades de mil.
//ENTRADA: numero
//uni,dec,cen,mil
//"ingrese el mumero"
//mil = numero/1000
//centenas = (numero/100)%10
//decenas = (numero/10)%10
//unidades = numero%10
//salida: escribir la unidad, decena, centena y unidad de mil

funcion selectivas7()
	definir n como entero
	definir cen como real
	definir uni,dec,mil como real
	escribir "ingrese el digito binario de 4 numeros"
	leer n
	mil=trunc(n/1000)
	cen=trunc(n/100)%10
	dec=(n/10)%10
	uni=n%10
	escribir "unidad de mil: ",mil
	escribir "centena: ",cen
	escribir "decena: ",dec
	escribir "unidad: ",uni
FinFuncion

//EJERCICIO 8 
//Dado un carácter indicar si es un digito 
//o una consonante o un carácter especial.
//entrada: caracter "como caracter"
//"ingrese caracter"
//proceso: si car >= "0" y car <= "9"
//"es digito"
//sino si car >= "b" y car <= "d" o car >="f" y car <= "h" o car >= "j"  y car <= "n" o car >= "p" y car <= "t" o car >= "v" y car <= "z"
// "es caracter"
//sino si car >= " " y car <= "/"
//"es caracter especial"
//
funcion selectivas8()
	definir car Como Caracter
	escribir "ingrese un caracter"
	leer car
	si car >= "0" y car <= "9"
		escribir "es caracter"
	sino si car>="b" y car<="d"  O car>="f" y car<="h"  O car>="j"  y car<="n"  O car>="p" y car<="t"  O car>="v" y car<="z"
			escribir "es consonante"
		sino si car <= " " y car <= "/"
				escribir "es caracter especial"
			SiNo
				escribir "el caracter ingresaso esta fuera de rango"
			FinSi
		finsi	
	FinSi
FinFuncion

//EJERCICIO 9
//Dado dos caracteres indicar si el primer carácter es igual,
// mayor o menor que el segundo
//entrada: c1,c2  "como caracter"
//"ingrese el primer caracter"
// "ingrese el segundo caracter"
// si c1 > c2
// "el carcter c1: ",c1," es mayor que c2: ",c2
//sino si c1 < c2
// "el caracter de c1: ",c1," es menor a c2: ",c2
// SiNo
// c1," es igual a: ",c2
//
funcion selectivas9()
	definir c1,c2 como caracter
	escribir "ingrese el primer caracter"
	leer c1
	escribir "ingrese el segundo caracter"
	leer c2
	si c1 > c2
		escribir "c1: ",c1," es mayor a c2: ",c2
	sino si c1 < c2
			escribir "c1: ",c1," es menor a c2: ",c2
		sino 
			escribir c1," es igual a c2: ",c2
		FinSi
	FinSi
FinFuncion
//EJERCICIO 10
//Dada una frase cualquiera presentarla en mayúscula y minuscula
//entrada: frase , fMayus, "fMinus como caracter"
//"ingrese frase"
// fMyus = Mayusculas(fMayus)
// fMinus = Minusculas(fMinus)
// "la frase ingresada es: ",frase 
// "la frase en mayuscula es: ",fMyus
// "la frase en minuscula: ",fMinus
funcion selectivas10()
	definir frase, fMayus, fMinus como caracter
	escribir "ingrese la frase"
	leer frase
	fMayus = Mayusculas(frase)
	fMinus =Minusculas(frase)
	escribir "la frase ingresada es: ",frase
	escribir "la frase en mayuscula es: ",fMayus
	escribir "la frase en minuscula es: ",fMinus
FinFuncion
//
//CONDICIONALES
Funcion condicional1()
	Definir año,mes,dia Como Entero
    // Pedir al usuario ingresar una fecha
    Escribir "Ingrese una fecha:"
    Escribir "Año (aaaa):"
    Leer año
    Escribir "Mes (mm):"
    Leer mes
    Escribir "Día (dd):"
    Leer dia
    // Verificar si el año es bisiesto
    Si (año % 400 == 0) O ((año % 4 == 0) Y (año % 100 <> 0)) Entonces
        Escribir "El año", año, "es un año bisiesto."
    Sino
        Escribir "El año ", año , " no es un año bisiesto."
    FinSi
FinFuncion
//Indicar si una palabra es palindroma
funcion condicionales2()
	definir palabra,palabra2 como cadena;
	palabra2="";
	definir n,i como entero;
	Escribir "Ingrese una palabra";
	leer palabra;
	n=Longitud(palabra);
	para i=n-1 hasta 0 con paso -1 Hacer
		palabra2=palabra2+Subcadena(palabra,i,i);
	FinPara
	si palabra=palabra2 Entonces
		Escribir "La palabra es palindroma";
	sino
		Escribir "La palabra no es palindroma";
	FinSi
FinFuncion
//ESTRUCTURAS CONDICIONALES
//EJERCICIO 3.0
//	Cree un algoritmo que tome por entrada las horas y minutos de un día y dé comoresultado
//	su equivalente en segundos.
// //ebntrada: horas, minutos segundos 
//HorasEnSegunndos, minutosEnSegundos
// escrbir "ingrese la cantidad de horas
// horas
//ingrese la cantidad de minutos?
// minutos
//horasEnSegundos = horas*3600
//minutosEnSegundos = minutos*60
//adicional si lo pide xdxd
// segundos = horasEnSegundos + minutosEnSegundos
funcion condicionales3_0()
	definir hor, min, seg Como real
	definir horasEnSeg, minutosEnSeg como real
	escribir "ingrese la cantidad de horas"
	leer hor
	escribir "ingrese la cantidad de minutos"
	leer min
	horasEnSeg = hor*3600
	minmutosEnSeg = min*60
	escribir "la cantidad de ",hor," hora/s en segundos es: ",horasEnSeg
	escribir "la cantidad de ",min," minuto/s en segundos es: ",minutosEnSeg
	//extra
	seg = horasEnSeg+minmutosEnSeg
FinFuncion

//EJERCICIO 3.1
//	Para un valor entero positivo que representa una cantidad en segundos, indicarsu
//	equivalente en minutos, horas y días.
//entrada: segundos
// segundosEnMinutos, segundosEnHoras, segundosEnDias
// escribbbb "ingrese la cantidad de numeros a covertir
// leer segundos
// segundosEnMinutos = segundos / 60
//segundosEnHoras = segundos / 3600
//segundosEnDias = segundos / 86400
funcion condicionales3_1()
	definir seg Como Entero
	definir segMinutos, segHoras, segDias como real
	escribir "ingrese la cantidad de segundos"
	leer seg
	segMin= seg/60
	segHor = seg/3600
	segDias=seg/86400
	escribir "la cantidad de ",seg," segundo/s en minutos es: ",segMin
	escribir "la cantidad de ",seg," segundo/s en horas es: ",segHor
	escribir "la cantidad de ",seg," segundo/s en dias es: ",segDias
FinFuncion

//EJERCICIO 4 CONDICIONALEZZZ
//entrada: a, b ,c d
//escribbb "ingrese el valor de a
//leer a 
//escrr "ingrese el valor de b
//leer b
//essc "ingrese el valor de c
//leer c
//si a > b y a > c
//escr "el mayor es la ª 
//sino si b > a y b > c 
//escr "el mayor es b
//sino si c > a y c > b 
//escrribir "el mayor es c
//sino escribir son iguales
funcion condicionales4()
	definir a,b,c Como Entero
	escribir "ingrese el valor de a"
	leer a
	escribir "ingrese el bvalor de b"
	leer b
	escribir "ingrese el valor de c"
	leer c
	si a < b y a > c
		escribir "el mayor es a"
	sino
		si b > a y b > c
			escribir "el mayor es b"
		sino 
			si c > a y c > b Entonces
				escribir "el mayor es c"
			FinSi
			
		FinSi
		
	FinSi
FinFuncion
Funcion Condicionales5()
    // Pedir al usuario ingresar la hora de entrada y la hora de salida
    Escribir "Ingrese la hora de entrada (horas y minutos separados por espacio):"
    Leer horaEntrada, minutosEntrada
    Escribir "Ingrese la hora de salida (horas y minutos separados por espacio):"
    Leer horaSalida, minutosSalida
    // Calcular el tiempo transcurrido en minutos
    minutosTotalesEntrada <- (horaEntrada * 60) + minutosEntrada
    minutosTotalesSalida <- (horaSalida * 60) + minutosSalida
    tiempoTranscurridoMinutos <- minutosTotalesSalida - minutosTotalesEntrada
    // Calcular el monto a pagar
    montoPagar <- 0
    Si tiempoTranscurridoMinutos < 30 Entonces
        montoPagar <- 0.5
    Sino
        // Calcular el número de horas completas
        horasCompletas <- tiempoTranscurridoMinutos / 60
        
        montoPagar <- horasCompletas * 1.5
    FinSi
    // Mostrar el monto a pagar
    Escribir "El monto a pagar es:", montoPagar
FinFuncion
//EJERCICIO 6
//Ejercicio 6.
//El IMC resulta de la división de la masa del individuo (en kilogramos) entre el cuadrado de
//la estatura (en metros). El índice de masa corporal es un indicadordel peso de una
//persona en relación con su altura.
//Clasificación del IMC de acuerdo con la OMS de la ONU:
//a. Menor a 16: Criterio de ingreso.
//b. 16 a 16.9: infra peso.
//c.17 a 18.4: bajo peso.
//d. 18.5 a 24.9: peso normal.
//e. 25 a 29.9: sobrepeso.
//f. 30 a 34.9: obesidad pre-mórbida.
//g. 40 a 45: obesidad mórbida.
//h. Mayor a 45: obesidad híper-mórbida.
//	Dado el peso de una persona en libras (1 libra = 0,453592 Kg) y su estatura en
//	centímetros, calcule su IMC e indique como salida el peso en kilogramos, el valorde IMC
//	de la persona y la categoría en la cual fue clasificado.

//entrada lb, cm
// kg, m covPeso
// "ingrese el peso en libras"
// "ingrese la altura en centimetros"
// kg = lb/2.205
// m = cm/100
// convPeso = kg/(m*m)
// si convPeso < 16 
//" criterio de ingreso"
//sino si convPeso >= 16 y convPeso < 16.9
//"infra peso"
//sino si convPeso >= 17 y convPeso <= 18.4
//"bajo peso"
//asi segir con lo demas
funcion condicionales6()
	definir lb , cm Como Real
	definir kg, m, convPeso como real
	escribir "ingrese el peso en libras de la persona"
	leer lb
	escribir "ingrese la altura de la persona en centimetros"
	leer cm
	kg = lb/2.205
	m = m/100
	convPeso = kg/(m*m)
	si convPeso < 16
		escribir "criterio de ingreso"
	sino 
		si convPeso >= 16 y convPeso <= 16.9
			escribir "CATEGORIA infra peso"
		sino 
			si convPeso >= 17 y convPeso <= 18.4
				escribir "CAEGORIA bajo peso"
			sino 
				si convPeso >= 18.5 y convPeso <= 24.9
					escribir "CATEGORIA peso normal"
				SiNo
					si convPeso >= 25 y convPeso <= 29.9 Entonces
						escribir "CATEGORIA sobrepeso"
					sino 
						si convPeso >= 30 y convPeso <= 34.9
							escribir "CATEGORIA obesidad pre-morbida"
						sino 
							si convPeso >= 40 y convPeso <= 45
								escribir "obesidad morbida"
							SiNo
								si convPeso > 45
									escribir "CATEGORIA obesidad hiper-morbida"
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	escribir "el peso en kilogramos de la persona es: ",kg
	escribir " el valor de IMC de la persona es: ",convPeso 
FinFuncion

//EJERCICIO 8
//Solicitar un número entre el 1 y el 12 e imprimir el mes correspondiente a dicho número.
//entrada: mes
//proceso: d¿segun dia Hacer
// "1":
// escribir "enero"
//"2":
//"febrero"
//etc etc.....
funcion condicionales8()
	definir mes Como Caracter
	escribir "digite un numero del 8 al 12"
	leer mes
	si mes = "1"
		escribir "enero"
	SiNo
		si mes = "2"
			escribir "febrero"
		SiNo
			si mes = "3"
				escribir "marzo"
			SiNo
				si mes = "4"
					escribir "abril"
				SiNo
					si mes = "5"
						escribir "mayo"
					SiNo
						si mes = "6"
							escribir "junio"
						SiNo
							si mes = "7"
								escribir "julio"
							SiNo
								si mes = "8"
									escribir "agosto"
								SiNo
									si mes = "9"
										escribir "septiembre"
									SiNo
										si mes = "10"
											escribir "octubre"
										sino 
											si mes = "11"
												escribir "noviembre"
											SiNo
												si mes = "12"
													escribir "diciembre"
												SiNo
													escribir "EL DIGITO ESTA FUERA DE RANGO"
												FinSi
											FinSi
											
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	finsi
FinFuncion

//EJERICICO 9
//En un almacén se hace un 20% de descuento a los clientes cuya compra supere los $1000,
//se desea que realice un algoritmo el cual tome por entrada el monto apagar por el cliente
//	y arroje como salida el monto aplicando el descuento de ser necesario.
//entrada: compra, desceunto, total
//"ingrese la compra"
//si compra > 1000
// descuento = compra*0.20
// total = compra-descuento
// "la compra supera a los 1000 y se desceunta 20%"
// "el valor a pagar es: ",total
//sino "el valor a agar es: ",compra
//finsi
//
//
funcion condicionales9()
	definir compra, descuento, total como real
	escribir "digite el precio de la compra"
	leer compra
	si compra > 1000
		descuento = compra*0.20
		total = compra-descuento
		escribir "la compra supera los 1000 por lo tanto se aplica un desceunto de 20%"
		escribir "el valor total a pagar es: ",total
	SiNo
		escribir "el valor a pagar es: ",compra
	FinSi
FinFuncion


//ejercicio 10
//entrada: a,b
//oper "como caracter"
//sum,rest,mult,div,resto,trunc
//"ingrese el valor de a
//"ingrese el valor de b
//"ingrese el operador
//leer ""
// si oper = "+"
//sum = a+b
//sino si oper = "-"
//rest = a-b
//sino si oper = "*"
//mult = a*b
//sino si oper = "/"
// div = a/b
//sino si oper = "%"
// resto = a%b
//sino si oper = "trunc"
// trunc = trunc(a)/b
funcion condicionales10()
	definir a,b Como Entero
	definir oper Como Caracter
	definir sum, rest, mult, div, resto, truncado Como Real
	escribir "ingrese el valor de a"
	leer a
	escribir "ingrese el valor de b"
	leer b
	escribir "ingrese el operador"
	leer oper
	si oper = "+"
		sum = a+b
		escribir a,"+",b,"=",sum
	sino 
		si oper = "-"
			rest = a-b
			escribir a,"-",b,"=",rest
		sino
			si oper = "*"
				mult = a*b
				escribir a,"*",b,"=",mult
			SiNo
				si oper = "/"
					div = a/b
					escribir a,"/",b,"=",div
				SiNo
					si oper = "%"
						resto = a%b
						escribir a,"%",b,"=",resto
					SiNo
						si oper = "trunc"
							truncado = trunc(a)/b
							escribir a," trunc ",b,"=",truncado
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion
//iterativas
//EJERCICIO 1
//Dado un número entero N, calcular e informar al usuario 
//cuántos dígitos tiene dicho número
//    // Entrada de datos
//    Leer N
//	
//    // Convertir N a valor absoluto
//    N <- abs(N)
//	
//    // Convertir N a cadena de texto
//    N_str <- ConvertirATexto((N)
//	
//    // Calcular cantidad de dígitos
//    cantidadDigitos <- Longitud(N_str)
//	
//    // Imprimir resultado
//    Escribir "El número", N, "tiene", cantidadDigitos, "dígitos"

funcion iterativas1()
	definir n como entero
	definir cdn como caracter
	definir cantD como entero 
	escribir "ingrese un n cantidad de valor"
	leer n
	//n=abs(n)
	cdn=ConvertirATexto(n) 
	cantD = Longitud(cdn)
	escribir "el valor ingresado tiene ",cantD," digitos"
FinFuncion
//EJERCICIO 2
// ENTRADA: n, cd
//"ingrese el numero en letas"
//Indicar si una palabra es palindroma
funcion iterativas2()
	escribir "iterativas 2-PALINDROMAS(CAPICUAS)"
	definir palabra,palabra2 como cadena;
	palabra2="";
	definir n,i como entero;
	Escribir "Ingrese una palabra";
	leer palabra;
	n=Longitud(palabra);
	para i=n-1 hasta 0 con paso -1 Hacer
		palabra2=palabra2+Subcadena(palabra,i,i);
	FinPara
	si palabra=palabra2 Entonces
		Escribir "La palabra es palindroma";
	sino
		Escribir "La palabra no es palindroma";
	FinSi
FinFuncion
Funcion iterativas3()
    // Pedir al usuario ingresar un número
    Escribir "Ingrese un número:"
    Leer numero
    // Mostrar los divisores del número
    Escribir "Los divisores de ", numero, " son:"
    Para divisor <- 1 Hasta numero Hacer
        Si numero % divisor == 0 Entonces
            Escribir divisor
        FinSi
    FinPara
FinFuncion
Funcion iterativa4()
	Definir num Como Entero
    // Pedir al usuario ingresar un número
    Escribir "Ingrese un número:"
    Leer num    
    // Inicializar la variable de la suma
    sumaDivisores <- 0
    // Calcular la suma de los divisores del número
    Para divisor <- 1 Hasta num Hacer
        Si num % divisor == 0 Entonces
            sumaDivisores <- sumaDivisores + divisor
        FinSi
    FinPara
    // Mostrar la suma de los divisores
    Escribir "La suma de los divisores de ", num, " es:", sumaDivisores
FinFuncion
Funcion iterativa5()
	Definir num Como Entero
    // Pedir al usuario ingresar un número
    Escribir "Ingrese un número:"
    Leer num
    // Inicializar la variable de la cantidad de divisores
    cantidadDivisores <- 0
    // Calcular la cantidad de divisores del número
    Para divisor <- 1 Hasta num Hacer
        Si num % divisor == 0 Entonces
            cantidadDivisores <- cantidadDivisores + 1
        FinSi
    FinPara
    // Mostrar la cantidad de divisores
    Escribir "La cantidad de divisores de ", num, " es:", cantidadDivisores
FinFuncion
Funcion iterativa6()
	Definir num Como Entero
    // Pedir al usuario ingresar un número
    Escribir "Ingrese un número:"
    Leer num
    // Inicializar la variable para almacenar la suma de los divisores
    sumaDivisores <- 0
    // Calcular la suma de los divisores del número
    Para divisor <- 1 Hasta num-1 Hacer
        Si num % divisor == 0 Entonces
            sumaDivisores <- sumaDivisores + divisor
        FinSi
    FinPara
    // Verificar si el número es perfecto
    Si sumaDivisores == num Entonces
        Escribir "El número ", num, " es perfecto"
    Sino
        Escribir "El número ", num, " no es perfecto"
    FinSi
FinFuncion
Funcion iterativa7()
	Definir num Como Entero
    // Pedir al usuario ingresar un número
    Escribir "Ingrese un número:"
    Leer num
    // Inicializar la variable para contar los divisores
    contadorDivisores <- 0
    // Calcular la cantidad de divisores del número
    Para divisor <- 1 Hasta num Hacer
        Si num % divisor == 0 Entonces
            contadorDivisores <- contadorDivisores + 1
        FinSi
    FinPara
    // Verificar si el número es primo
    Si contadorDivisores == 2 Entonces
        Escribir "El número ", num, " es primo"
    Sino
        Escribir "El número ", num, " no es primo"
    FinSi
FinFuncion
//EJERCICIO 8
//Construya un programa que dado un valor entero N, 
//haga el cálculo de la función factorial
//utilizando estructuras iterativas.
funcion iterativas8()
	escribir "ejercicio 8 iterativas-FACTORIAL"
	definir factorial,c,n como entero
	escribir "ingrese el numero que desee"
	leer n
	c=1
	mientras c <= n Hacer
		factorial = n*c
		escribir factorial
		c=c+1	
	FinMientras
FinFuncion

//EJERCICIO 9
//Dado un número entero N que representa una contraseña y asumiendo que una
//contraseña debe tener al menos 10 dígitos para ser segura, determine si la contraseña
//		ingresada por el usuario es correcta, de no serlo debe pedirla nuevamente hasta que tenga
//		los 10 (diez) dígitos solicitados y al ser correcta mostrar un mensaje de éxito al usuario, por
//		salida estándar.
//esntrada: digitos "como caracter"
// cantD "como entero"
//"ingrese los digitos"
// cantD = longitud(digitos)
//hasta que cantD > 10 hacer 
//"la contraseña",cantD,"es segura"
//fin hasta
//
//Repetir
//"ingrese los digitos"
//leer digitos
// cantD = longitud(digitos)
//Hasta Que cantD > 10
//escribir "la contraseña",digitos,"es segura"
funcion iterativas9()
	escribir "iterativas 8-CONTRASEÑA"
	definir contraseña Como Caracter
	definir cantD Como Entero
	Repetir
		escribir "ingrese la contraseña mayor a 10 digitos"
		leer contraseña
		cantD = longitud(contraseña)
	Hasta Que cantD >= 10
	escribir "la contraseña ingresada",contraseña,"es correcta :)"
FinFuncion 


//EJERCICIO 10 
//entrada: n, nMayor, nMenor
//nMEnor=99999
//nMayor=1
//n=1
//mientras n <> 0 Hacer
// ingrese numero
// n
//si n <> 0 y n < nMEnor
//nMEnor<-n
//sino si n <> 0 y n > nMayor
//nMyor<-n
//FinSi
//finmientras
//escribir "el mayor es: ",nMayor
//escribrii "el menor es:",nMenor
funcion iterativas10()
	escribir "iterarivas 10-NUM> NUM<"
	definir n, nMayor, nMenor Como Entero
	nMayor=1;nMenor=999999
	n=1
	mientras n <> 0 Hacer
		escribir "ingrese valor"
		leer n
		si n <> 0 y n < nMenor
			nMenor <- n
		sino 
			si n <> 0 y n > nMayor
				nMayor <- n
			FinSi
		fin si	
	FinMientras
	escribir "el numero menor es: ",nMenor
	escribir "el numero mayor es: ",nMayor
FinFuncion
//EJERCICIO 11
//Se tiene una secuencia de enteros terminada en cero, que corresponde a la edad, peso y
//estatura de una muestra de hombres y mujeres mayores de 18 años. Con base en dicha
//secuencia se desea realizar un estudio a fin de conocer:
//	Edad promedio de todas las personas en la muestra.
//	Peso promedio de todas las personas en la muestra.
//	Estatura promedio de todas las personas en la muestra.
//	Cuántas personas hay con edad entre los 18 y 25 años.
//	Cuántas personas son mayores a 36 años.
//	Cuál es el promedio de peso de las personas con edades entre 18 y 35 años.

//entrada: n, c, edad, peso, estatura, sum18_35, promedio18_36
//promE, promP,promEs
//definir ce
//c=0;n=1;c2=0;c3=0
// proceso: mientras n <> 0
//c=c+1
//Repetir
//	escribir "ingrese la edad"
//	leer edad
//Hasta Que edad >= 18
// escribir "ingrese el peso"
// escribir "ingrese la estatura"
// sumE = sumE + edad 
// sumP = sumP + peso
// sumES = sumES + estarura
//si edad >= 18 y edad <= 25
// c2=c2+1
//si edad >= 36
// c3=c3+1
// si edad >= 18 y edad <= 35
// c4=c4+1
// sum18_35 = sum18_35 + peso
//escribir "ingrese un valor"
//leer n 
// fin Mientras
//promE = sumE/c
//promP = sumP/c
//promES = sumES/c
// // promedio del peso entre los 18 a 35
// prom18_35 = sum18_35/c4
funcion iterativas11()
	definir n, c, edad, peso, estatura, s18_35, prom18_35 Como Entero
	definir promE, promP,promEs como entero
	definir sumaE, sumaP, sumaES Como Entero
	definir c2,c3,c4 como entero
	c=0;n=1;c2=0;c3=0;c4=0;n=1
	sumaE=0;sumaP=0;sumaES=0;s18_35=0
	mientras n <> 0 Hacer
		c=c+1
		repetir 
			escribir "ingrese la edad"
			leer edad
		Hasta Que edad >= 18
		escribir "ingrese el peso"
		leer peso
		escribir "ingrese la estatura"
		leer estatura
		sumaE = sumaE + edad
		sumaP = sumaP + peso
		sumaES = sumaES + estatura
		si edad >= 18 y edad <= 25
			c2=c2+1
		FinSi
		si edad >= 36
			c3=c3+1
		FinSi
		si edad >= 18 y edad <= 35
			s18_35 = s18_35 + peso
			c4=c4+1
		FinSi
		escribir "ingrese un numero distinto a 0 para continuar"
		leer n
	FinMientras
	promE = sumaE/c
	promP = sumaP/c
	promES = sumaES/c
	//prom
	prom18_35 = s18_35/c4
	escribir "promedio general de las edades: ", promE
	escribir "promedio general de los pesos: ", promP
	escribir "promedio general de las estaturas: ", promES
	escribir "personas entre los 18 a 25: ",c2
	escribir "personas mayores a 35: ",c3
	escribir "promedio de peso de las personas entre 18 a 35: ",prom18_35
FinFuncion


//EJERCICIO 12
//Construye un algoritmo que calcule e imprima la tabla de multiplicar, desde la tabla del 1
//	hasta la del 10.
// entrada: n, ss
//escribir "ingrese la tabla a multiplicar"
//leer n
//para n hasta 10 con paso 1 Hacer
//	c=c+1
//	ss = ss + n
//	escribir n,"*",c,"=",ss
//FinPara
funcion iterativas12()
	escribir "iterativas 12-TABLAS DE MULTIPLICAR"
	definir c,ss,n como entero
	C=0;ss=0
	escribir "ingrese la tabla que desee"
	leer n
	mientras c < 10 Hacer
		c=c+1
		ss=ss+n
		escribir n,"*",c,"=",ss
	FinMientras
FinFuncion	

//EJERCICIO 13
//Escribir un algoritmo que multiplique dos números 
//por medio de sumas sucesivas
//funcion ejercicio27()
//	definir i, val, suma Como Entero
//	suma=0 
//	para i=1 hasta 10 con paso 1 Hacer
//		escribir i," ingrese valor"
//		leer val
//		suma = suma + val
//		escribir suma
//	FinPara
//	escribir "la suma total es: ",suma
//FinFuncion
funcion iterativas13()
	definir n1,c,sm,i Como Entero
	escribir "ingrese el primer numero"
	leer n1
	escribir "ingrese la cantidad de veces a multiplicar"
	leer c
	sm = 0
	para i<-1 hasta c con paso 1 Hacer
		//s = n1
		sm = sm+n1
		escribir sm
	FinPara
	escribir n1,"*",c,"=",sm
FinFuncion

//EJERCICIO 14
//entrada: n, p, s ,c
//c=0;n=1;s=0;p=0
//bukleeee
//mientras n <> 0 Hacer
//"ingrese valores"
//n
// si n > 1
// c=c+1
// s=s+n
// fin minetras
//p = s/c
//escribir "el promedio de los numeros ingresados es: ",p

funcion iterativas14()
	escribir "iterarivas 14-PROMEDIO DE N NUMEROS"
	definir n,c,s,p Como real
	n=1;c=0;s=0;p=0
	mientras n <> 0 Hacer
		escribir "ingrese valores"
		leer n
		si n > 1 
			c=c+1
			s=s+n
		FinSi
	FinMientras
	p=s/c
	escribir "el promedio de los numeros ingresados es: ",p
FinFuncion

//EJERCICIO 15
//Escribir un algoritmo que divida dos 
//números por medio de restas sucesivas.
funcion iterativas15()
	definir n1,c,r,i Como Entero
	escribir "ingrese el valor"
	leer n1
	escribir "ingrese la cantidad de veces a dividir"
	leer c
	r=0
	para i<-1 hasta c con paso 1 Hacer
		r=n1-r
		escribir r
	FinPara
	escribir n1,"/",c,"=",r
	
FinFuncion
// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuSelectivas,menuCondicionales,menuIterativas,titulo,titulo2,opc,opcn,apcc,apca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuSelectivas[11],menuCondicionales[11],menuIterativas[16]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Estructuras selectivas"
	menuPrincipal[1] = "  2)Estructuras condicionales"
	menuPrincipal[2] = "  3)Estructuras Iterativas"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuSelectivas[0] = "  1)convierta a expresión matemática"
	menuSelectivas[1] = "  2)operadores"
	menuSelectivas[2] = "  3)aplicación que calcule la resolvente."
	menuSelectivas[3] = "  4)Mayor o igual"
	menuSelectivas[4] = "  5)Dado un (1) número, imprimir 0 si es par y 1 si es impar"
	menuSelectivas[5] = "  6)El bit de paridad es"
	menuSelectivas[6] = "  7)Binario"
	menuSelectivas[7] = "  8)Dado un carácter indicar si es un digito "
	menuSelectivas[8] = "  9)Dado dos caracteres indicar si el primer carácter es igual"
	menuSelectivas[9] = "  10)Dada una frase cualquiera presentarla en mayúscula y minuscula"
	menuSelectivas[10]= "  11)Salir"
	
	// arreglos submenu cadenas
	menuCondicionales[0] = "  1)año es bisiesto"
	menuCondicionales[1] = "  2)Palindroma"
	menuCondicionales[2] = "  3)Convertir seundo minutos y horas"
	menuCondicionales[3] = "  4)Dadas dos frase indicar la de mayor longitud"
	menuCondicionales[4] = "  5)Monto a pagar"
	menuCondicionales[5] = "  6)peso y altura de persona"
	menuCondicionales[6] = "  7)"
	menuCondicionales[7] = "  8)Solicitar un número entre el 1 y el 12 e imprimir el mes correspondiente a dicho número"
	menuCondicionales[8] = "  9)Compra y descuento"
	menuCondicionales[9] = "  10)Operadores"
	menuCondicionales[10] = " 11)Salir"
	
	// arreglo submenu arreglos
	menuIterativas[0]= "1)cuántos dígitos tiene dicho número"
	menuIterativas[1]= "2)Capicuas"
	menuIterativas[2]= "3)Divisores"
	menuIterativas[3]= "4)Suma divisores"
	menuIterativas[4]= "5)Cantidad divisores"
	menuIterativas[5]= "6)Numero perfecto"
	menuIterativas[6]= "7)Numero primo"
	menuIterativas[7]= "8)iterativas-FACTORIAL"
	menuIterativas[8]= "9)representa una contraseña "
	menuIterativas[9]= "10)Numero menor y mayor"
	menuIterativas[10]= "11)Promedio de edad peso altura por edad"
	menuIterativas[11]= "12)Tablas de miltiplicar"
	menuIterativas[12]= "13)cantidad de veces a multiplicar"
	menuIterativas[13]= "14)PROMEDIO DE N NUMEROS"
	menuIterativas[14]= "15)cantidad de veces a dividir"
	menuIterativas[15]= "16) Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
			"1":
				opcn=""
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Selectivas",menuSelectivas,11)
					Segun opcn Hacer
						"1":
							Escribir "Ejercicio 1"
							selectivas1()
							esperar 3 Segundos
						"2":
							Escribir "Ejercicio 2"
							selectivas2()
							esperar 3 Segundos
						"3":
							Escribir "Ejercicio 3"
							selectivas3()
							esperar 3 Segundos
						"4":
							Escribir "Ejercicio 4"
							selectivas4()
							esperar 3 Segundos
						"5":
							Escribir "Ejercicio 5"
				            selectivas5()
							esperar 3 Segundos
						"6":
							Escribir "Ejercicio 6"
							selectivas6()
							esperar 3 Segundos
						"7":
							Escribir "Ejercicio 7"
							selectivas7()
							esperar 3 segundos
						"8":
							Escribir "Ejercicio 8"
							selectivas8()
							esperar 3 Segundos
						"9":
							Escribir "Ejercicio 9"
							selectivas9()
							esperar 3 segundos
						"10":
							Escribir "Ejercicio 10"
							selectivas10()
							esperar 3 segundos
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							Esperar 3 Segundos
					Fin Segun
				FinMientras
				
			"2":
				opcn=""
				mientras opcn <> "11" Hacer
					opcn=presentarMenu("Menu Condicionales",menuCondicionales,11)
					segun opcn hacer
						"1":
							Escribir "Ejercicio 1"
							condicional1()
							esperar 3 Segundos
						"2":
							Escribir "Ejercicio 2"
							condicionales2()
							esperar 3 Segundos
						"3":
							Escribir "Ejercicio 3"
							condicionales3_1()
							esperar 3 segundos
						"4":
							Escribir "Ejercicio 4"
							condicionales4()
							esperar 3 Segundos
						"5":
							Escribir "Ejercicio 5"
							Condicionales5()
							esperar 3 Segundos
						"6":
							Escribir "Ejercicio 6"
							condicionales6()
							esperar 3 Segundos
						"7":
							Escribir "Ejercicio 7"
							
							esperar 3 segundos
						"8":
							Escribir "Ejercicio 8"
							condicionales8()
							esperar 3 Segundos
						"9":
							Escribir "Ejercicio 9"
							condicionales9()
							esperar 3 Segundos
						"10":
							Escribir "Ejercicio 10"
							condicionales10()
							esperar 3 Segundos
						"11":
							Escribir "Regresando al Menu Principal"
							esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							esperar 3 Segundos
					FinSegun
				FinMientras
				
			"3":
				opcn=""
				mientras opcn <> "11" Hacer
					opcn=presentarMenu("Menu Iterativas",menuIterativas,16)
					segun opcn hacer
						"1":
							Escribir "Ejercicio 1"
							iterativas1()
							esperar 3 Segundos
						"2":
							Escribir "Ejercicio 2"
							iterativas2()
							esperar 3 segundos
						"3":
							Escribir "Ejercicio 3"
							iterativas3()
							esperar 3 Segundos
						"4":
							Escribir "Ejercicio 4"
							iterativa4()
							Esperar 3 Segundos
						"5":
							Escribir "Ejercicio 5"
							iterativa5()
							esperar 3 Segundos
						"6":
							Escribir "Ejercicio 6"
							iterativa6()
							esperar 3 Segundos
						"7":
							Escribir "Ejercicio 7"
							iterativa7()
							esperar 3 Segundos
						"8":
							escribir "Ejercicio 8"
							iterativas8()
							esperar 3 segundos
						"9":
							escribir "Ejercicio 9"
							iterativas9()
							esperar 3 Segundos
						"10":
							Escribir "Ejercicio 10"
							iterativas10()
							esperar 3 Segundos
						"11":
							Escribir "Ejercicio 11"
							iterativas11()
							esperar 3 Segundos
						"12":
							Escribir "Ejercicio 12"
							iterativas12()
							esperar 3 Segundos
						"13":
							Escribir "Ejercicio 13"
							iterativas13()
							esperar 3 Segundos
						"14":
							Escribir "Ejercicio 14"
							iterativas14()
							esperar 3 Segundos
						"15":
							Escribir "Ejercicio 15"
							iterativas15()
							esperar 3 Segundos
						"16":
							Escribir "Regresando al Menu Principal"
							esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							esperar 3 Segundos
					FinSegun
				FinMientras
			"4":
				Escribir "Gracias por usar el Sistema"
				Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo