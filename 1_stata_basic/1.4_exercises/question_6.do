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
	log using question_6.txt, text replace
	
	use "auto.dta", clear 	
	
	// Definir la macro global varlist con los nombres
	// de las variables
		global varlist1 mpg price weight

	// Obtener las estadísticas resumidas para las variables
	// almacenadas en varlist
		sum `varlist1'
		
	// Definir la macro local varlist con los nombres 
	// de las variables
		local varlist2 mpg price weight

	// Obtener las estadísticas resumidas para las 
	// variables en varlist
		sum `varlist2'

/*==================
	Fin de la bitacora
===================*/	
	log close
