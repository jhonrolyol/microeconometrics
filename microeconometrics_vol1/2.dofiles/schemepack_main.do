/*==============================================================================

                     MICROECONOMETRICS USING STATA
							 
                              SCHEMEPACK 
                   .................................

                           Jhon R. Ordoñez
                       (rolyordonezleon@gmail.com)
											 
==============================================================================*/

* Clean
    cls
    clear all
    set more off
    capture log close
	
* Set working directory
    global root "D:\master\microeconometrics\schemepack"
    cd          "$root"
    cap !mkdir 1.slides
    cap !mkdir 2.dofiles
    cap !mkdir 3.raw_data
    cap !mkdir 4.documentation
    cap !mkdir 5.clean_data
    cap !mkdir 6.results
               cap !mkdir "6.results/6.1.tables"
               cap !mkdir "6.results/6.2.figures"
               cap !mkdir "6.results/6.3.log_files"
    global dofiles  "${root}/2.dofiles"
    global raw      "${root}/3.raw_data"
    global clean    "${root}/5.clean_data"
    global results  "${root}/6.results"
    global tables   "${results}/6.1.tables"
    global figures  "${results}/6.2.figures"
    global logfiles "${results}/6.3.log_files"
	
* Solution of the exercises
    do "${dofiles}/schemepack.do"
