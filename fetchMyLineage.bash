genus=$1
specie=$2

if [ "$genus" == "" ] || [ "$specie" == "" ];then
	echo "genus or specie empty, both are neccesary"
	exit
fi

curl -s "https://www.ebi.ac.uk/ena/data/view/Taxon:$genus%20$specie&display=xml" |awk '
BEGIN{band=0}
{
	if($0~"<lineage>"){
		band=1;next
	}
	if($0~"</lineage>"){
		band=0
	};
	if(band==1){
		gsub("="," ");print
	}
}' |awk '{
	toprint="";for(i=1;i<=NF;i++){
		if($i=="scientificName"){
			toprint=$(i+1)
		};
		if($i=="rank"){
			toprint=toprint" "$(i+1)
		}
	}print toprint
}' |tail -r |awk '{
	gsub("\"","");if($1!="" && $2!=""){
		if(toprint==""){
			toprint=$1
		}else{
			toprint=toprint" "$1}
		}
	}
	END{print toprint}' |awk -v genus=$genus -v specie=$specie '{
		if($0~"Candidatus"){printf "Superkingdom: Unknow\nPhylum: Unknow\nClass: Unknow\nOrder: Unknow\nFamily: Unknow\nGenus: %s\nSpecie: %s\n",genus,specie;exit}
		print "Superkingdom: "$1
		print "Phylum: "$2
		print "Class: "$3
		print "Order: "$4
		print "Family: "$5
		print "Genus: "genus
		print "Specie: "specie
	}'
