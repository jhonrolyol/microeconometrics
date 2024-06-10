
* Data import 
	use "${raw}/auto.dta", clear 	
	browse 
	
* Regress
	codebook mpg
	codebook price
	codebook weight 
	regress mpg price weight
	ereturn list // Shows the list of scalars, macros, matrices and functions.
	scalar r2 = e(r2)
	display "R squared (r2): " r2
	scalar N = e(N)
	scalar r2adj = r2 - (1 - r2)*(3-1)/(N - 3)
	display "R cuadrado ajustado (r2adj): " r2adj
	reg mpg price weight, nocons
	reg mpg price weight 
	scalar beta3_esti =  _b[weight]
	display "El coeficiente estimado de weight: " beta3_esti
	scalar tweight = (_b[weight] - 0) / _se[weight]
	display "tweight: " tweight
	// In general, the formula to calculate the t-statistic for any coefficient is:
	regress mpg price weight  
	foreach var of varlist price weight {
		scalar t`var' = (_b[`var'] - 0)/_se[`var']
		display "t: " t`var'
	}
		
* help and search 
	search e()
	help e()
	help ereturn

