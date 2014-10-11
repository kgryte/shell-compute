#!/bin/awk -f

# Compute the arithmetic mean.

BEGIN {
	N = 0
	mean = 0
	delta = 0
}
{
	# Update the mean using Welford's algorithm:
	N++
	delta = $col - mean
	mean += delta / N
}
END {
	print mean
}