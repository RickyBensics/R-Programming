read.delim( "C:/Users/Richard/Documents/GitHub/R Programming/Applied Linear Regression Models Problems/1.21 & 1.25/data.txt", header = FALSE, sep = "" ) -> data
names( data ) <- c( 'Broken Ampules', 'Route' )

linearModel = lm( data$'Broken Ampules' ~ data$Route )
regressionParameters = coef( linearModel )

cat( "Y = ", regressionParameters[1], " + ", regressionParameters[2], "X")

plot ( data$Route, data$'Broken Ampules', xlab = "Route", ylab = "Broken Ampules", xlim = c( 0,3 ), xaxt = "n" )
axis(1, at = 0:3)
abline( regressionParameters[1], regressionParameters[2] )

E <- function( x )
  return ( regressionParameters[1] + regressionParameters[2]*x )
E( 1 )

cat( "( Xbar, Ybar ) = (", mean( data$Route ), ",", mean( data$'Broken Ampules' ), ")" )

# problem 1.25

cat( "The first residual is ", linearModel[[2]] [1] )

squaredResiduals = sum( linearModel[[2]]^2 )
cat( "The sum of squared residuals is ", squaredResiduals )

MSE = squaredResiduals / ( length( data$Route )-2 )
cat( "MSE = ", MSE )