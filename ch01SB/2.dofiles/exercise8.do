
* Set seed 
	set seed 12345

* Create two random variables with 100 observations each
	clear
	browse
	set obs 100
	forvalues i = 1/2 {
		gen x`i' = runiform()
	}
	browse
		
	summarize x1 x2 
	 
* Graphs
	graph twoway scatter x1 x2, name(fig1)
	graph export "${figures}/fig1.png", as(png) replace 
	
	graph twoway (scatter x1 x2) (lfit x1 x2), name(fig2)
	graph export "${figures}/fig2.png", as(png) replace 
		
	graph twoway (scatter x2 x1)(lfit x2 x1), name(fig3)
	graph export "${figures}/fig3.png", as(png) replace 
		
