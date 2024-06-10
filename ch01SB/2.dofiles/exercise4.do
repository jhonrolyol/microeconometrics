
* Data import
	use "${raw}/auto.dta", clear 
	browse
	
* Summary statistics
	summarize price
	display "============================="
	display "======= Summary values ======"
	display "============================="
	display "Number of observations (Obs): " r(N)
	display "Standard deviation (std. dev.): " r(sd)
	display "Mean (mean): " r(mean)
	display "Minimum value (Min): " r(min)
	display "Maximum value (Max): " r(max)
	display "=============================="
	display "Variation coefficient (vc): " r(sd)/r(mean)
		
* help and search 
	search r()
	help r()
	help ereturn
	
* Additional
	codebook foreign
	by foreign: summarize mpg weight
	regress mpg weight foreign
