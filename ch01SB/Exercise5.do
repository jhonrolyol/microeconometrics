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
	log using question_5.txt, text replace
	
	use "auto.dta", clear 	
	
	/*===========
		Regress
	============*/
		codebook mpg
		codebook price
		codebook weight 
		
		regress mpg price weight
		
		ereturn list // Muestra la lista de scalars, macros, matrices y functions.
	
		scalar r2 = e(r2)
		display "R cuadrado (r2): " r2
		
		/* Formula de r2 ajustado (r2adj):	
				r2adj = r2 - (1 - r2)(K-1)/(N-K)
			Donde:
				- N: Número de observaciones
				- K: Número de parametros incluyendo el intercepto
		*/
		
		scalar N = e(N)
		scalar r2adj = r2 - (1 - r2)*(3-1)/(N - 3)
			*scalar r2adj = e(r2) - (1 - e(r2))*(3-1)/(e(N) - 3)
		display "R cuadrado ajustado (r2adj): " r2adj
		
		/*============================ 
		return list (scalars): 
			display e(N) 
			display e(rmse)
			display e(r2)
			display e(mss)
			display e(df)
			display e(Ftest)
			display e(ll_0)
			display e(ll)
			display e(ic_0)
			display e(ic) 
			display e(rank)
			display e(k_eq_1) 
			display e(k_omitted) 
			display e(k_missing) 
			display e(k_differs)
			display e(cmd) 
		==============================*/
			
		/* Formula de "t" calculado de weight (tweight):
				tweight = coef.weight / Std. Err. weight
			Donde:
				- coef.weight: Estimador asociado a la variable weight
				- Std. Err. weight: Desviación estandar del estimador coef.weight
		*/	
		
		reg mpg price weight, nocons
		reg mpg price weight 
		
		scalar beta3_esti =  _b[weight]
		display "El coeficiente estimado de weight: " beta3_esti
		
		scalar tweight = (_b[weight] - 0) / _se[weight]
		display "tweight: " tweight
		
		/*En general, la fórmula para calcular el estadístico t 
		para cualquier coeficiente es:*/
		
		regress mpg price weight  
		
		foreach var of varlist price weight {
			scalar t`var' = (_b[`var'] - 0)/_se[`var']
			display "t: " t`var'
		}
		
		
	/*================
		help and search 
	=================*/	
		search e()
		help e()
		help ereturn
		
/*==================
	Fin de la bitacora
===================*/	
	log close
