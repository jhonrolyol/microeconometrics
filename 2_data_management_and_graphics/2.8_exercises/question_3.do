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
	* Ruta de trabajo
	pwd
	global root "D:\master\microeconometrics\2_data_management_and_graphics\2.8_exercises"
	pwd
	cd "$root"
	
	* Importar la data "mus202psid92m.dta"
	use "mus202psid92m.dta"
	
	* Revisando la data 
	describe 
	codebook er32049 
	browse er32049
	
	* Renombrar la variable 
	rename er32049 marstatus
	codebook marstatus
	
	* Colocar la siguiente etiqueta "marital status"
	tab marstatus
	label variable marstatus "marital status"
	codebook marstatus
		// Otra opción sería:
		//la var marstatus "marital status"
	
	* Tabulando la variable "marstatus"
	tab marstatus
	
	* Usar "label define" y "label value"
	
	label define marstatus 1 "married" ///
		2 "never married" 3 "widowed" 4 "divorced or annualment" ///
		5 "separated" 8 "not answered or do not know" ///
		9 "no marital history collected", replace
	label value marstatus marstatus
	tab marstatus
	br marstatus
	
	* Crear la variable "casado"
	gen casado = .
	replace casado = 1 if marstatus == 1
	replace casado = 0 if marstatus != 1
	br casado 
	
	label define casado 1 "married" 0 "otherwise"
	label value casado casado 
	tab casado 
	
	* Resumen del ingreso promedio por estado civil
	summarize marstatus aveearnings
	help by 
	sort marstatus aveearnings
	by marstatus: summarize aveearnings

	graph twoway scatter aveearnings marstatus 
	graph box earnings, over(marstatus)
	

	
	
