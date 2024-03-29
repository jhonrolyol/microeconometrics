/*=============================
	Limpiar el entorno de trabajo
=============================*/
	cls
	clear all
	set more off
	capture log close
	
/*============
	Solution: 
=============*/	
	// probando cargar data desde el internet
	clear 
	use "http://www.stata-press.com/data/r17/census"
	describe 
	clear 
	
	// data input from keyboard using input 
	clear 
	input str20 age name income female
		29 "Barry" 40.990 0
		30 "Carrie" 37.000 1
		31 "Gary" 48.000 0
	end
	list, clean 
	
	// other option
	
	clear
	input age str10 name income female
		29 "Barry" 40.990 0
		30 "Carrie" 37.000 1
		31 "Gary" 48.000 0
	end

	list

	// path 
	pwd
	global root "D:\master\microeconometrics\2_data_management_and_graphics\2.8_exercises"
	cd "$root"
	pwd 
	
	// import data "data.csv"
	clear 
	import delimited using "data.csv", clear
	list

	// Read data from a CSV file with variable names assigned
	clear
	import delimited using "data.csv", varnames(1) clear
	list
	br 
	

******** HAY DUDAS EN ESTA PREGUNTA OK! CON EL "infix"
	
	// Replace commas in the text file and read using infix
	clear 
	import delimited using "data_modified.txt", clear
	list

	*clear
	*infix age 1-2 name 4-10 income 12-19 female 21
	*list
	
