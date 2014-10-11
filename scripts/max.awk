#!/bin/awk -f

# Compute the maximum value.

!i++ {
	# Only for the first record:
	max = $col
}
{
	if ($col > max)
		max = $col
}
END {
	print max
}