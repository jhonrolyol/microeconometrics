
* Data import
	use "${raw}/auto.dta", clear 	
	browse
	
	global varlist1 mpg price weight
	sum $varlist1
	
	local varlist2 mpg price weight
	sum `varlist2'
	