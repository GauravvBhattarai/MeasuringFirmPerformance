use "D:\Leeds\Econ & Finance MSc\Semester 2\Applied Econometrics\ACW\Projects\project11.dta"
reg roe age size adv_intensity debtequity
xtset co year
xtdescribe
xtsum
xtreg roe age size adv_intensity debtequity, fe
xtreg roe age size adv_intensity debtequity, re
xttest0
xtreg roe age size adv_intensity debtequity, fe
estimates store FE
xtreg roe age size adv_intensity debtequity, re
estimates store RE
hausman FE RE
xtreg roe age size adv_intensity debtequity indian_promoter foreign_promoter institution, fe
test indian_promoter foreign_promoter institution
xtreg roe age size adv_intensity debtequity indian_promoter foreign_promoter institution indian2 for2 inst2, fe
test indian2 for2 inst2
test indian_promoter foreign_promoter institution indian2 for2 inst2
xtreg roe age size adv_intensity debtequity indian_promoter foreign_promoter institution indian2 for2 inst2 ye1 ye2 ye3 ye4 ye5 ye6 ye7 ye8, fe
test ye1 ye2 ye3 ye4 ye5 ye6 ye7 ye8
use "D:\Leeds\Econ & Finance MSc\Semester 2\Applied Econometrics\ACW\Projects\project11.dta", clear
keep if year >= 2001 & year <= 2004
xtreg roe age size adv_intensity debtequity indian_promoter foreign_promoter institution indian2 for2 inst2 ye1 ye2 ye3 ye4, fe
use "D:\Leeds\Econ & Finance MSc\Semester 2\Applied Econometrics\ACW\Projects\project11.dta", clear
keep if year >= 2005 & year <= 2008
xtreg roe age size adv_intensity debtequity indian_promoter foreign_promoter institution indian2 for2 inst2 ye5 ye6 ye7 ye8, fe
