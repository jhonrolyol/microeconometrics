/*==============================================================================

                        Microeconometrics Using Stata

                       A Visual Guide to Stata Graphics
										
                              Jhon R. Ordoñez
                               April 29, 2024
==============================================================================*/

*#1.- Cleaning
	cls
	clear all
	set more off
	capture log close
	
*#2.- Working directory
	global root "D:\master\microeconometrics\StataGraphs"
	global data "${root}\Data"
	global results "${root}\Results"
		global gint "${results}\graphs_introduction"
		global gtwo "${results}\graphs_twoway"
		
*#3.- Data import
	use "allstates.dta", clear 
	browse 
	save "${data}\allstates.dta", replace 
	browse 

*#4.- Graphs 
	use "${data}\allstates.dta", clear 
	browse
	
	*#4.1.- Graph N° 1
	graph twoway scatter ownhome propval100
	graph export "${gtwo}\graph1.png", as(png) replace 
	
	twoway scatter ownhome propval100
	scatter ownhome propval100
	
	*#4.2.- Graph N° 2
	twoway scatter ownhome propval100, msymbol(Oh)
	graph export "${gtwo}\graph2.png", as(png) replace 
	
	*#4.3.- Graph N° 3
	twoway scatter ownhome propval100, msize(vlarge)
	graph export "${gtwo}\graph3.png", as(png) replace 
	
	*#4.4.- Graph N° 4
	twoway scatter ownhome propval100, mcolor(maroon)
	graph export "${gtwo}\graph4.png", as(png) replace 
	
	*#4.5.- Graph N° 5
	twoway scatter ownhome propval100, mcolor(maroon%50)
	graph export "${gtwo}\graph5.png", as(png) replace 
	
	*#4.6.- Graph N° 6
	twoway scatter ownhome propval100, mcolor(maroon%50) msize(*3)
	graph export "${gtwo}\graph6.png", as(png) replace
	
	
	* Import data
	use "citytemp.dta", clear
	browse
	save "${data}\citytemp.dta", replace 
	browse
	use "${data}\citytemp.dta", clear 
	browse
	
	*#4.7.- Graph N° 7
	twoway scatter heatdd cooldd
	graph export "${gtwo}\graph7.png", as(png) replace
	
	*#4.8.- Graph N° 8
	twoway scatter heatdd cooldd, msymbol(p)
	graph export "${gtwo}\graph8.png", as(png) replace
	
	*#4.9.- Graph N° 9
	twoway scatter heatdd cooldd, msymbol(o) msize(vsmall)
	graph export "${gtwo}\graph9.png", as(png) replace
	
	*#4.x.- Graph N° x
	*#4.x.- Graph N° x
	*#4.x.- Graph N° x
	*#4.x.- Graph N° x


