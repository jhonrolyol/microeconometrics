
* Data import 
	clear 
	use "http://www.stata-press.com/data/r17/census"
	describe 
	clear 
	
* Data input from keyboard using input 
	clear 
	input str20 age name income female
		29 "Barry" 40.990 0
		30 "Carrie" 37.000 1
		31 "Gary" 48.000 0
	end
	list, clean 
	
* other option
	clear
	input age str10 name income female
		29 "Barry" 40.990 0
		30 "Carrie" 37.000 1
		31 "Gary" 48.000 0
	end

	list

* Data import "data.csv"
	clear 
	import delimited using "${raw}/data.csv", clear
	save "${clean}/data_new.dta", replace
	list
	
* Read data from a CSV file with variable names assigned
	clear
	import delimited using "${raw}/data.csv", varnames(1) clear
	list
	br 

* Replace commas in the text file and read using infix
	clear 
	import delimited using "${raw}/data_modified.txt", clear
	list

	*clear
	*infix age 1-2 name 4-10 income 12-19 female 21
	*list
	
