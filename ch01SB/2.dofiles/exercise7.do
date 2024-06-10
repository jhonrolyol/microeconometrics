
* Data import 
	use "${raw}/auto.dta", clear 	
	browse 
	browse headroom length

	foreach var of varlist headroom length {
		gen total_`var' = headroom + length
	}
	browse 
	
	summarize headroom length
	summarize total_headroom total_length
	
