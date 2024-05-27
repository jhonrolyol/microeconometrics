* Data 
sysuse auto.dta, clear
browse

* Install 
ssc install schemepack, replace
 
* Set scheme
set scheme s2color // By default
set scheme s2mono
set scheme s1color // Nice option
set scheme s2gcolor
set scheme s2manual
set scheme s1rcolor
set scheme economist
set scheme sj

set scheme white_viridis // stata-schemepack
set scheme neon
set scheme rainbow


* Graphs 
graph twoway scatter mpg price
graph bar mpg, by(foreign)
graph twoway (scatter mpg price) (lfit mpg price)
graph box mpg, by(foreign)

