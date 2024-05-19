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
	
	

