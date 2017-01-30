read.delim( "C:/Users/Richard/Documents/GitHub/R Programming/Applied Linear Regression Models Problems/1.19/data.txt", header = FALSE, sep = "" ) -> data
names( data ) <- c( 'GPA', 'ACT' )

Ybar = sum(data$GPA) / length(data$GPA)
Xbar = sum(data$ACT) / length(data$ACT)

B1 = sum( (data$ACT-Xbar)*(data$GPA-Ybar) ) / sum( (data$ACT-Xbar)^2 )
B0 = Ybar - B1*Xbar

cat( "B0 = " , B0 , "\nB1 = " , B1 , "\nY = " , B0 , " + " , B1 , "X")

#lm(data$GPA ~ data$ACT) # Performs the same calculations as above

plot ( data$ACT, data$GPA, xlab = "ACT Scores", ylab = "GPA" )
abline( B0, B1 )

E <- function( x )
  return ( B0 + B1*x )
E( 30 )