read.delim( "C:/Users/Richard/Documents/GitHub/R Programming/Applied Linear Regression Models Problems/1.28/data.txt", header = FALSE, sep = "" ) -> data
names( data ) <- c( 'crimeRate', 'diplomaPercent' )

linearModel = lm( data$crimeRate ~ data$diplomaPercent )
regressionParameters = coef( linearModel )

cat( "Y = ", regressionParameters[1], " + ", regressionParameters[2], "X")

plot ( data$diplomaPercent, data$crimeRate, xlab = "Percent of Individuals with High School Diploma", ylab = "Crime Rate (Per 100,000 Residents)")
abline( regressionParameters[1], regressionParameters[2] )

E <- function( x )
  return ( regressionParameters[1] + regressionParameters[2]*x )
E( 80 )

cat( "The tenth residual is ", linearModel[[2]] [10] )

cat( "MSE = ", sum( linearModel[[2]]^2 / ( length( data$diplomaPercent )-2 ) ) )