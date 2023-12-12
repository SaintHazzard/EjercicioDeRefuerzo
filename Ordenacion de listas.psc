Proceso sin_titulo
	Dimension arrayBase[10], ordenAscendente[10], ordenDescendente[10]
	
	generandoLista(arrayBase)
	Para i=0 Hasta 9 Hacer
		ordenAscendente[i]=arrayBase[i]
		ordenDescendente[i]=arrayBase[i]
	FinPara
	ordenarAscendente(ordenAscendente)
	ordenarDescendente(ordenDescendente)
	Escribir ''
	
FinProceso


Funcion generandoLista(arrayNums)
	Para i=0 Hasta 9 Hacer
		arrayNums[i]=Aleatorio(1,100)
	FinPara
	Escribir Sin Saltar 'Lista original: '
	Para i=0 Hasta 9 Hacer
		Si i=0 Entonces
			Escribir Sin Saltar , arrayNums[i]
		SiNo
			Escribir Sin Saltar ,', ', arrayNums[i]
		FinSi
	FinPara
	Escribir ''
FinFuncion


Funcion ordenarAscendente(arrayNums)
	Para i=0 Hasta 9 Hacer
		Para j=0 Hasta 9 Hacer
			
			Si j<9 Entonces
				Si (arrayNums[j] > arrayNums[j+1])  Entonces
					aux=arrayNums[j] 
					arrayNums[j] =arrayNums[j+1]
					arrayNums[j+1]=aux
				FinSi
			FinSi
		FinPara
	FinPara
	Escribir Sin Saltar 'Lista en orden ascendente: '
	Para i=0 Hasta 9 Hacer
		Si i=0 Entonces
			Escribir Sin Saltar , arrayNums[i]
		SiNo
			Escribir Sin Saltar ,', ', arrayNums[i]
		FinSi
	FinPara
FinFuncion

Funcion ordenarDescendente(arrayNums)
	Para i=0 Hasta 9 Hacer
		Para j=0 Hasta 9 Hacer
			Si j<9 Entonces
				Si (arrayNums[j] < arrayNums[j+1])  Entonces
					aux=arrayNums[j] 
					arrayNums[j] =arrayNums[j+1]
					arrayNums[j+1]=aux
				FinSi
			FinSi
		FinPara
	FinPara
	Escribir ''
	Escribir Sin Saltar 'Lista en orden descendente: '
	Para i=0 Hasta 9 Hacer
		Si i=0 Entonces
			Escribir Sin Saltar , arrayNums[i]
		SiNo
			Escribir Sin Saltar ,', ', arrayNums[i]
		FinSi
	FinPara
	
FinFuncion
	