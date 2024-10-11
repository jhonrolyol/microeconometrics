
* Data import "mus202psid92m.dta"
	use "${raw}/mus202psid92m.dta", clear 
	browse
	describe 
	codebook er32049 
	browse er32049
	save "${clean}/mus202psid92m_new.dta", replace
	** Rename variables
	rename er32049 marstatus
	codebook marstatus
	** Label variable
	tabulate marstatus
	label variable marstatus "marital status"
	codebook marstatus
	** Tabulate
	tabulate marstatus
	** Use "label define" and "label value"
	label define marstatus 1 "married" ///
		2 "never married" 3 "widowed" 4 "divorced or annualment" ///
		5 "separated" 8 "not answered or do not know" ///
		9 "no marital history collected", replace
	label value marstatus marstatus
	tab marstatus
	br marstatus
	** Generate
	generate married = .
	replace married = 1 if marstatus == 1
	replace married = 0 if marstatus != 1
	browse married 
	label define label_married 1 "married" 0 "otherwise"
	label value married label_married 
	tabulate married 
	** Summarize
	summarize marstatus aveearnings
	help by 
	sort marstatus aveearnings
	by marstatus: summarize aveearnings

	graph twoway scatter aveearnings marstatus, name(fig1)
	graph export "${figures}/fig1.png", as(png) replace
	
	graph box earnings, over(marstatus), name(fig2)
	graph export "#{figures}/fig2.png", as(png) replace
	

	
	
