#!/bin/bash
#for each line download the line (line is url)
while true
do
	File="sources.txt"
	Cities=("Newark" "Freehold" "Hoboken" "Leonia" "Wildwood")
	Lines=$(cat $File)
	i=0
	for line in $Lines
	do
		echo "$line, ${Cities[$i]}"
		get_site="wget --wait=2 --user-agent=Mozilla --no-parent --adjust-extension --no-clobber -e robots=off $line"
		eval $get_site
		let "i++"
	done
	for city in ${Cities[@]}; do
		file="MapClick.php?CityName=$city&state=NJ.html"
		echo $file
		mv $file "$city.html"
	done

	if [[ -f "tagsoup-1.2.1.jar" ]]
	then
   	echo "tagsoup exists on your filesystem."
	else
   	wget https://repo1.maven.org/maven2/org/ccil/cowan/tagsoup/tagsoup/1.2.1/tagsoup-1.2.1.jar
	fi

	for city in ${Cities[@]}; do
		java -jar tagsoup-1.2.1.jar --files  "$city.html"
		./parser.py "$city.xhtml" "$city"
		rm "$city.html" "$city.xhtml"
	done

	sleep 6h
done




