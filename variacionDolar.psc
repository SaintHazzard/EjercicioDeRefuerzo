Proceso variacionDolar
	Escribir 'Muestra de dias: '
	Leer dias
	
	Dimension precio[dias]
	diffVariation=0
	Para i=0 Hasta dias-1 Hacer
		Escribir 'Precio dia ', i
		Leer value
		precio[i]=value
	FinPara
	
	Para i=0 Hasta dias-2 Hacer
		calcDiff = precio[i+1]-precio[i]
		Si calcDiff > diffVariation  Entonces
		diffVariation=calcDiff
		FinSi
	FinPara
	Si diffVariation > 0 Entonces
		Escribir 'La mayor alza fue de: ', diffVariation
	SiNo
		Escribir 'No hubo alza'
	FinSi
	
FinProceso
