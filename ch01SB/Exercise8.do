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
	log using question_8.txt, text replace
	
	// Establecer la semilla para la reproducibilidad
		set seed 12345

	// Crear dos variables aleatorias con 100 observaciones cada una
		clear
		browse
		set obs 100
		forvalues i = 1/2 {
			gen x`i' = runiform()
		}
		browse
		
	// Verificar la media y la varianza de las variables "x1" y "x2"
		summarize x1 x2 
	 
	// Gráfica de dispersión
		graph twoway scatter x1 x2 
		graph twoway (scatter x1 x2) (lfit x1 x2)
		
		graph twoway (scatter x2 x1)(lfit x2 x1), name(g1) 
		graph export "figuras/g1.png", replace 
		
	
/*==================
	Fin de la bitacora
===================*/	
	log close
