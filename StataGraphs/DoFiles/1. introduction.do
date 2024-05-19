/*==============================================================================

                        Microeconometrics Using Stata

                       A Visual Guide to Stata Graphics
										
                              Jhon R. Ordoñez
                               April 24, 2024
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
	
	net from "https://www.stata-press.com/data/vgsg4/"
	net get vgsg4 
	net install vgsg4
	
	
	use "allstates.dta", clear 
	browse 
	save "${data}\allstates.dta", replace 
	browse 

*#4.- Graphs
	graph twoway scatter propval100 ownhome, msymbol(Sh)
	
	set scheme vg_s2cx
	use allstates.dta, clear 
	graph twoway scatter propval100 ownhome, msymbol(Sh)
	graph export "${results}\intro_graph1.png", replace
	
	graph twoway scatter propval100 ownhome, msymbol(Sh) scheme(vg_s2cx)
	graph export "${results}\intro_graph2.png", replace
	
	graph twoway scatter propval100 popden
	graph export "${results}\intro_graph3.png", replace
	
	twoway scatter propval100 popden
	graph export "${results}\intro_graph4.png", replace
	
	twoway lfit propval100 popden
	graph export "${results}\intro_graph5.png", replace
	
	twoway (scatter propval100 popden) (lfit propval100 popden)
	graph export "${results}\intro_graph6.png", replace
	
	twoway (scatter propval100 popden) (lfit propval100 popden) ///
		     (qfit propval100 popden)
	graph export "${results}\intro_graph7.png", replace

	twoway (scatter propval100 popden) (mspline propval100 popden) ///
         (fpfit propval100 popden) (mband propval100 popden) ///
         (lowess propval100 popden)
	graph export "${results}\intro_graph8.png", replace
	
	
