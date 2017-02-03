# Find the most frequent integer in an array
array <- sample(1:100,100,replace=T)
array <- sort(array)
mostCommonInteger = -1
mostCommonIntegerCount = 0

for(i in 1:length(array))
{
	temp = 1
	j = i
	while(array[j] == array[j+1] && j+1 <= length(array) )
	{
		temp = temp + 1
		j = j + 1
	}
	if(temp > mostCommonIntegerCount)
	{
		mostCommonInteger = array[i]
		mostCommonIntegerCount = temp
	}
}
array
paste("The most integer is ",mostCommonInteger," counted ",mostCommonIntegerCount," times")
