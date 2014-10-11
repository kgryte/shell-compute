#!/bin/awk -f

# Computes the number of values.

BEGIN {
	c = 0
}
{
	count++
}
END {
	print count
}