* clear
 
 clear all
 
 * read data
 
 use https://www.ucl.ac.uk/~ccaajim/results
 
 * data wrangling
 
 replace maths = 57 if maths == 500
 replace class = 3 if class ==4
 
 egen avxm = rowmean(maths english history)
 
 replace avxm = round(avxm)
 
 label variable avxm "Average Exam. Score"

 generate stream = 2
 replace stream = 1 if avxm >= 60
 replace stream = 3 if avxm < 50
 
 label variable stream "Stream"
 label define strlab 1 "Top" 2 "Mid" 3 "Low"
 label values stream strlab
 
 
 
 