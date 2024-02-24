/*=============================
	Limpiar el entorno de trabajo
=============================*/
	cls
	clear all
	set more off
	capture log close

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
	log using question_4.txt, text replace
	
	use "auto.dta", clear 
	
	/*===================
		Summary statistics
	===================*/
		summarize price
		display "============================="
		display "=== Valores del summarize ==="
		display "============================="
		display "Número de observaciones (Obs): " r(N)
		display "Desviación estandar (Std. Dev.): " r(sd)
		display "Media (mean): " r(mean)
		display "Valor mínimo (Min): " r(min)
		display "Valor máximo (Max): " r(max)
		display "=============================="
		
		display "Coeficiente de variación (cv): " r(sd)/r(mean)
		
		
	/*================
		help and search 
	=================*/	
		search r()
		help r()
		help ereturn
	
	/*==============
		Adicional
	===============*/
		codebook foreign
		by foreign: summarize mpg weight
		
		regress mpg weight foreign

/*==================
	Fin de la bitacora
===================*/	
	log close

