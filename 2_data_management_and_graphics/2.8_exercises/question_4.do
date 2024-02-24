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
	use "mus202psid92m.dta", clear 
	d 
	* Graficar
	graph twoway scatter lnearns hours 
	
	* Gráfica de cajas y bigotes 
	graph box earnings education 
	
	graph box earnings, title("Box-and-Whisker Plot of Earnings (All Data)")

	graph box earnings, by(education) title("Titulo")
	
	codebook earnings
	list earnings in 1/50
	tab earnings
	
	codebook education 
	list education in 1/50
	tab education
	
	* Sin logaritmo de earnings (gráfica en niveles)
	graph box earnings, over(education) ///
	title("Diagrama de caja de los ingresos por nivel de educación") ///
	ytitle("Ingresos") 

	gen learnings = log(earnings)
	
	* Con logaritmo de earnings "learnings"
	graph box learnings, over(education) ///
	title("Diagrama de caja de los ingresos por nivel de educación") ///
	ytitle("Ingresos")
	
	* Gráfica de Histograma
	histogram earnings, title("Histograma de los ingresos") xtitle("Ingresos")

	*	Gráfica de Histograma 
	histogram learnings, title("Histograma de los ingresos") xtitle("Ingresos") 
	// En niveles
	histogram earnings, bin(100) kdensity title("Histograma de los ingresos") ///
	xtitle("Ingresos")
	// En logaritmos 
	histogram learnings, bin(100) kdensity title("Histograma de los ingresos") ///
	xtitle("Ingresos")

	* Diagrama de dispersión de "ingresos" contra "educación" en NIVELES
	graph twoway || scatter earnings education, ///
								title("Ingresos por niveles de educación") ///
								ytitle("Ingresos") xtitle("Niveles de educación")

	* Diagrama de dispersión de "ingresos" contra "educación" en LOGARITMO
	graph twoway || scatter learnings education, ///
								title("Ingresos por niveles de educación") ///
								ytitle("Ingresos") xtitle("Niveles de educación")
	Provide a single figure that uses scatterplot, lfit, and lowess of earnings against education.
	
	* EN NIVELES
	graph twoway (scatter earnings education) ///
             (lfit earnings education) ///
             (lowess earnings education), ///
             title("Ingresos por niveles de educación") ///
             ytitle("Ingresos") xtitle("Niveles de educación")

	* EN LOGARITMOS
	graph twoway (scatter learnings leducation) ///
             (lfit earnings education) ///
             (lowess earnings education), ///
             title("Ingresos por niveles de educación") ///
             ytitle("Ingresos") xtitle("Niveles de educación")
	
	*
	
	
	
