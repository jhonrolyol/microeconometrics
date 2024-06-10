* Example dataset "auto.dta"
	use "${raw}/auto.dta", clear
	browse 
	
* Summary statistics
	summarize mpg weight
	browse foreign
	by foreign: summarize mpg weight
	
* Regress
	regress mpg weight foreign
	regress mpg weight foreign, nocons

* Save 
	save "${clean}/auto_new.dta", replace
	