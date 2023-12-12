Proceso maquinaAlimentos
	Dimension productos[4,2]
	
	productos[1,1]='Producto A';productos[1,0]='270'
	productos[2,1]='Producto B';productos[2,0]='340'
	productos[3,1]='Producto C';productos[3,0]='390'
	
	
	
	Dimension monedas[4]
	monedas[1]=10
	monedas[2]=50
	monedas[3]=100
	
	
	prodElect=ConvertirANumero(menu(productos))
	Mientras pago=Falso Hacer
		Escribir 'Inserte las moneda: '
		Escribir '1. Moneda de 10$'
		Escribir '2. Moneda de 50$'
		Escribir '3. Moneda de 100$'
		Leer elecMoneda
		totalPago=totalPago+monedas[elecMoneda]
		Escribir 'Su pago actual es de: ', totalPago
		Esperar Tecla
		Si totalPago >= prodElect Entonces
			Escribir 'Pago completo'
			pago=Verdadero
			vuelto=totalPago-prodElect
		FinSi
	FinMientras
	generarVuelto(vuelto,monedas)
FinProceso


Funcion prodElect<-menu(productos)
	Escribir 'Que producto desea? '
	Para i=1 Hasta 3 Hacer
		Escribir i,'. ', productos[i,1]
		
	FinPara
	Leer elecproducto
	prodElect = productos[elecproducto,0]
FinFuncion

Funcion generarVuelto(vuelto,monedas)
	Dimension vueltos[4]
	vueltos[3]=trunc(vuelto/100)
	vuelto=vuelto % 100 
	Escribir vuelto
	vueltos[2]=trunc(vuelto/50)
	vuelto=vuelto%50
	Escribir vuelto
	vueltos[1]=trunc(vuelto/10)
	Escribir 'Su vuelto es: '
	Para i=3 Hasta 0 Con Paso -1 Hacer
		Para j=1 Hasta vueltos[i] Hacer
			Escribir monedas[i]
		FinPara
	FinPara
FinFuncion
	