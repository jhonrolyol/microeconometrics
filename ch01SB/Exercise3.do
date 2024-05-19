/*=============================
	Limpiar el entorno de trabajo
=============================*/
	cls
	clear all
	set more off
	capture log close // se utiliza para cerrar el archivo de registro actualmente abierto y capturar cualquier 
										// mensaje de error que pueda surgir durante el proceso de cierre del archivo.

/*==========================
	Ruta de trabajo
==========================*/
	pwd 
	global root "D:\master\microeconometrics\1_stata_basic\1.4_exercises"
	cd "$root"
	pwd 
	
/*======================
	Inicio de la bitacora
=======================*/
	log using question_3.txt, text replace
	
	use "auto.dta", clear 
	
	/*===================
		Summary statistics
	===================*/
		summarize mpg weight 
		
		codebook foreign
		by foreign: summarize mpg weight
		
		codebook mpg 
		codebook weight
		// Comentario (Carros domesticos): 
			* Hay un total de 52 carros
			* El promedio del kilometraje (millas x galon) es de 19.82692
			* La desviación estandar del kilometraje es de 4.743297
			* El mínimo kilometraje es de 12
			* El máximo kilometraje es de 34.
			* El peso promedio en libras es de 3317.115
			* El peso mínimos es de 1800 lbs
			* El peso máximo es de 4840 lbs	
			
		// Comentario (Carros extramjeros):
			* El comentario es lo mismo que en caso domestico.
			
	/*================
		help and search 
	=================*/	
		search r()
		help r()
	
	/*==============
		Regress
	===============*/
		regress mpg weight foreign
		
		// Comentario (Carros extranjeros): 
			* El estimador asociado es de -1.650029
			* Desviación estandar del estimador es 1.075994
			* Es "t" estimado es de -1.53
			* El p-values es de 0.130 
			* No es estadísticamente significativo.
			
/*==================
	Fin de la bitacora
===================*/	
	log close

	
	
	
