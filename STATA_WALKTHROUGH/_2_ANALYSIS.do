**********************************************************************
*** Teaching directory for 										   ***
*** Codes for Ahlfeldt & Barr (2022): The economics of skyscrapers ***											
*** (c) Gabriel M Ahlfeldt, 01/2024								   ***
**********************************************************************

*** This do file uses the programmes to solve the model under the baseline parametrization
*** and illustrate the spatial structure of the stylized city

*** It is straightforward to solve to conduct comparative statics by changing 
*** solving the model under alternative values of parameters and fundamentals and
*** compare the equilibrium outcomes

*** Most of the figures in the paper can be generated by solving the model under 
*** varying values of parameters and exogenous characteristics and analysing the 
*** endogenous outomes

// First load sythetic data set
u "DATA\SIMULATION\BASE.dta", clear

// Baseline gradients
// Syntax 	theta_C	theta_R	omega_C	omega_R	beta_C	a_bar_C	a_bar_R	tau_C	tau_R	c_C		c_R 	r_a 	S_bar_C	S_bar_R
FINDEQ 		0.5 	0.55 	0.03 	0.07 	0.030 	2		1 		0.01 	0.005 	1.3 	1.3 	50		999		999

GBIDRENT name1
GHEIGHT name0
GLANDRENT name3
grc1leg name1 name0 name3, cols(3) leg(name3) xsize(10) ysize(5)
	graph export "FIGS\FIG_gradients.pdf", replace
	graph export "FIGS\FIG_gradients.png", width(2400) height(1200) replace 

	
********************************
*** Introduce a height limit ***		
********************************
	
// Syntax 	theta_C	theta_R	omega_C	omega_R	beta_C	a_bar_C	a_bar_R	tau_C	tau_R	c_C		c_R 	r_a 	S_bar_C	S_bar_R
FINDEQ 		0.5 	0.55 	0.03 	0.07 	0.030 	2		1 		0.01 	0.005 	1.3 	1.3 	50		20		20
GBIDRENT name1
GHEIGHT name0
GLANDRENT name3
grc1leg name1 name0 name3, cols(3) leg(name3) xsize(10) ysize(5)
	graph export "FIGS\FIG_gradients_wHL.pdf", replace
	graph export "FIGS\FIG_gradients_wHL.png", width(2400) height(1200) replace 
	
*** Notice how the height limit not only affects building heights, but also the level	
*** of price gradients, the land bid rents, the horizontal land use pattern and, 
*** importantly, city size and wage

*** Other counterfactuals can be executed accodingly	
	
**************************************
*** Do file successfully completed ***	
**************************************	