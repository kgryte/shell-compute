#!/bin/bash

# Count:
awk -f ./../scripts/count.awk ./data/1.txt | awk '{print "Count: "$1}'

# Sum:
awk -v col=1 -f ./../scripts/sum.awk ./data/1.txt | awk '{print "Sum: "$1}'

# Min:
awk -v col=1 -f ./../scripts/min.awk ./data/1.txt | awk '{print "Min: "$1}'

# Max:
awk -v col=1 -f ./../scripts/max.awk ./data/1.txt | awk '{print "Max: "$1}'

# Mean:
awk -v col=1 -f ./../scripts/mean.awk ./data/1.txt | awk '{print "Mean: "$1}'

# Median:
awk -v col=1 -f ./../scripts/median.awk ./data/1.txt | awk '{print "Median: "$1}'