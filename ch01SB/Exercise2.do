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
	
/*===================
	Summary statistics
===================*/
	summarize mpg weight
	browse foreign
	by foreign: summarize mpg weight
	
/*==============
	Regress
===============*/
	regress mpg weight foreign
	regress mpg weight foreign, nocons

