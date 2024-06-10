* Clean 
	cls
	clear all
	set more off
	capture log close 

* Set working directory
	pwd 
	global root "D:\master\microeconometrics\ch01SB"
	cd "$root"
	pwd 
	
* Start of log file
	log using "${logfiles}/question_3.txt", text replace
	** Data import
	use "${raw}/auto.dta", clear 
	browse
	** Summary statistics
	summarize mpg weight 
	codebook foreign
	by foreign: summarize mpg weight
	codebook mpg 
	codebook weight
	** Help and search
	search r()
	help r()
	** Regress
	regress mpg weight foreign

* End of log file
	log close
