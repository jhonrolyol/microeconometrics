/*==============================================================================
	- Author:      JrProCode 
	- Email:       rolyordonezleon@gmail.com     
	- Book:        Microeconometrics Using Stata    
	- Topic:       Exercise 1
	- Date:        16 de abril de 2023
	- Version:     Stata 16
==============================================================================*/


/*=============================
	Limpiar el entorno de trabajo
=============================*/
	cls
	clear all
	set more off
	capture log close 
	
/*======================
	Usando "display"
=======================*/	
	display "¡Hola, mundo!"
	
	scalar nombre = "Juan"
	display nombre
	
	display %10.5f 123.321
	display %10.5e 123.321
	display %10.5g 123.321
	display %-10.5f 123.321
	display %10,5f 123.321
	display 123.321
	
	
/*
	DOCUMENTACIÓN: 
	
display %10.5f 123.321: Esto muestra el valor 123.321 en formato de punto
flotante con un ancho de campo mínimo de 10 caracteres y un número de 5 
decimales después del punto decimal. El resultado se verá así: 123.32100.

display %10.5e 123.321: Esto muestra el valor 123.321 en notación científica
con un ancho de campo mínimo de 10 caracteres y un número de 5 dígitos
después del punto decimal. El resultado se verá así: 1.23321e+02.

display %10.5g 123.321: Esto muestra el valor 123.321 en notación 
científica o en punto flotante, lo que sea más corto, con un ancho
de campo mínimo de 10 caracteres y un número de 5 dígitos después
del punto decimal. El resultado se verá así: 123.32.

display %-10.5f 123.321: Esto muestra el valor 123.321 en formato de
punto flotante con un ancho de campo mínimo de 10 caracteres, un número
de 5 decimales después del punto decimal y con alineación a la izquierda.
El resultado se verá así: 123.32100 .

display %10,5f 123.321: Esto muestra el valor 123.321 en formato de punto
flotante con un ancho de campo mínimo de 10 caracteres, un número de 5 
decimales después del punto decimal y con separadores de miles. 
El resultado se verá así: 123.32100.

*/
	
	