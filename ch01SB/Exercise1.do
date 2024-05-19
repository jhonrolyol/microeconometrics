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
	use "auto.dta", clear 	
	browse
	
/*==========================
	help and search
==========================*/
	
	help clogit 
	search clogit 
	
	