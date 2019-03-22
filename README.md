# fetchMyLineage
----

fetchMyLineage is a script that fetch a complete lineage (Kingdom, Phylum, Class, Order, Family, Genus, Species).
Save yourself headaches :D, you only need a genus and species name and the script will do the work.

## Requisites
* bash version >= 4.0
+ Mac OSX
+ (for linux user, replace "tail -r" for "tac" command in the script)

## Usage
	bash fetchMyLineage.bash [genus] [specie]
where [genus] and [specie] is a genus and specie name

## Output

Example:
	
	bash fetchMyLineage.bash Escherichia Coli
Output:

	Superkingdom: Bacteria
	Phylum: Proteobacteria
	Class: Gammaproteobacteria
	Order: Enterobacterales
	Family: Enterobacteriaceae
	Genus: Escherichia
	Specie: Coli
	
	
## External useful tools
check for these tools to extract some useful information from your data:

* [multiGenomicContext](https://github.com/Sanrrone/multiGenomicContext): Check the genomic context of several genomes or sequence just providing the GBK files.

* [fetchMyLineage](https://github.com/Sanrrone/fetchMyLineage): Return the complete lineage of your organism just providing the genus and species names.

* [extractSeq](https://github.com/Sanrrone/extractSeq): Extract and size defined sequence from and specific contig, from and specific genome.

* [plotMyGBK](https://github.com/Sanrrone/plotMyGBK): Plot your GBK in a circular graph with COG categories.

* [pasteTaxID](https://github.com/Sanrrone/pasteTaxID): fetch the taxonomic IDs to your fastas.

* [GGisy](https://github.com/Sanrrone/GGisy): Plot synteny of two sequence (you can use two genomes), and see the identity of the matched regions.

* [getS2](https://github.com/Sanrrone/getS2): obtain the order parameter to each residue of your simulation.
