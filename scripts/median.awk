#!/bin/awk -f 

# Computes the median.

BEGIN {
	i = 0
}
{
	a[i++] = $col
}
END {
	j = i/2
	if (i%2==1)
		median = a[int(j)]
	else
		median = (a[j]+a[j-1])/2
	print median
}