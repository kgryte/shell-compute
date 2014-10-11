#!/bin/awk -f

# Compute the sum.

{
	sum += $col
}
END {
	print sum
}