
* Data import 
	use "${raw}/mus202psid92m.dta", clear 
	describe 

* Graphs
	graph twoway scatter lnearns hours
	graph export "${figures}/fig1.png", as(png) replace 
	graph box earnings education
	graph export "${figures}/fig2.png", as(png) replace 
	graph box earnings, title("Box-and-Whisker Plot of Earnings (All Data)")
	graph export "${figures}/fig3.png", as(png) replace 
	graph box earnings, by(education) title("Titulo")
	graph export "${figures}/fig4.png", as(png) replace 

	codebook earnings
	list earnings in 1/50
	tab earnings
	
	codebook education 
	list education in 1/50
	tab education
	
	graph box earnings, over(education) ///
	title("Boxplot of income by educational level") ///
	ytitle("Incomes")
	graph export "${figures}/fig5.png", as(png) replace 

	gen learnings = log(earnings)
	
	graph box learnings, over(education) ///
	title("Boxplot of income by educational level") ///
	ytitle("Incomes")
	graph export "${figures}/fig6.png", as(png) replace 
	
	histogram earnings, title("Income histogram") xtitle("Incomes")
	graph export "${figures}/fig7.png", as(png) replace 
	
	histogram learnings, title("Income histogram") xtitle("Incomes")
	graph export "${figures}/fig8.png", as(png) replace 
	
	histogram earnings, bin(100) kdensity title("Income histogram") ///
	                    xtitle("Incomes")
	graph export "${figures}/fig9.png", as(png) replace 
	
	histogram learnings, bin(100) kdensity title("Income histogram") ///
	                     xtitle("Incomes")
	graph export "${figures}/fig10.png", as(png) replace 

	graph twoway || scatter earnings education, ///
								title("Income by educational levels") ///
								ytitle("Incomes") xtitle("Education levels")
	graph export "${figures}/fig11.png", as(png) replace 
								
	graph twoway || scatter learnings education, ///
								title("Income by educational levels") ///
								ytitle("Incomes") xtitle("Education levels")
	graph export "${figures}/fig12.png", as(png) replace 
	
	graph twoway (scatter earnings education) ///
             (lfit earnings education) ///
             (lowess earnings education), ///
             title("Income by educational levels") ///
             ytitle("Incomes") xtitle("Education levels")
	graph export "${figures}/fig13.png", as(png) replace 

	gen leducation = log(education)
	
	graph twoway (scatter learnings leducation) ///
             (lfit earnings education) ///
             (lowess earnings education), ///
             title("Income by educational levels") ///
             ytitle("Incomes") xtitle("Education levels")
	graph export "${figures}/fig14.png", as(png) replace 
	
