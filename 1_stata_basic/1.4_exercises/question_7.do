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
	pwd 
	cd "$root"
	
/*======================
	Inicio de la bitacora
=======================*/
	log using question_7.txt, text replace

	use "auto.dta", clear 	
	
	br headroom length
	
	foreach var of varlist headroom length {
		gen total_`var' = headroom + length
	}
	browse 
	br
	
	summarize headroom length
	summarize total_headroom total_length
	
/*==================
	Fin de la bitacora
===================*/	
	log close



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


