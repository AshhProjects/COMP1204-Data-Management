#!/bin/bash

inputF=$1
outputF=$2
echo "Converting $inputF -> $outputF ..."
echo "Timestamp,Latitude,Longitude,MinSeaLevelPressure,MaxIntensity" > $outputF

CDATAlines=$(grep -n CDATA $inputF | cut -d':' -f1 | tail -n+2)
	
for lineNum in $CDATAlines; do
	((lineNum+=3))
	timestamp=$(sed "${lineNum}q;d" $inputF | sed 's/\s*<[^>]*>//g')
	((lineNum+=2))
	latitudelongitude=$(sed "${lineNum}q;d" $inputF | sed 's/\s*<[^>]*>//g' | sed 's/N, /N,/g')
	((lineNum+=2))
	minsealevelpressure=$(sed "${lineNum}q;d" $inputF | sed 's/\s*<[^>]*>//g' | cut -d ';' -f1)
	((lineNum+=2))
	maxintensity=$(sed "${lineNum}q;d" $inputF | sed 's/\s*<[^>]*>//g' | cut -d ';' -f1)
	echo "$timestamp,$latitudelongitude,$minsealevelpressure,$maxintensity" >> $outputF
done

echo "Done!"
