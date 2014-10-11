#!/bin/awk -f

# Compute the minimum value.

!i++ {
	# Only for the first record:
	min = $col
}
{
	if ($col < min)
		min = $col
}
END {
	print min
}