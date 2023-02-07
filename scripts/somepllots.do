sysuse auto

graph box mpg, ///
  title("A Simple Box Plot", position(12) ring(1)) ///
  subtitle("There is only one group in this graph.", ring(1)) ///
  note("In later graphs we will subset the data.") ///
  caption("This is the caption or our first graph.") ///
  nooutsides
  
  
graph box mpg, ///
  over(foreign)  ///
  title("A Simple Box Plot", position(12) ring(1)) ///
  note("In later graphs we will subset the data.") ///
  caption("This is the caption for our first graph.", ring(1)) ///
  subtitle("There are two groups in this graph.", ring(0))

graph box mpg, ///
	over(foreign) ///
	title(My Box Plot) ///
	subtitle(The subtitle for my box plot) ///
	caption(This is the caption for my very important first box plot in this exercise.)///
	note(I hope this is formatted correctly)
	
import delimited "https://www.ucl.ac.uk/~ccaajim/results.csv", clear

local exams "maths english history"

foreach exam in `exams' {
    graph box `exam' 
    graph export  "`exam'.png", replace
}