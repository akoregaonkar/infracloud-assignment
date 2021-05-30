#!/bin/bash
RANDOM=$$
for i in `seq 0 9`
do
        echo "$i, $RANDOM" >> ./inputFile
done
