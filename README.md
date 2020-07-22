# Corona-RNA-Extraction
Extract the RNA of Corona virus from the Biologist's reports on the sequence of the virus genome.

Corona virus is a RNA virus , single strand RNA.

But in the data submitted by the biologist's to The [NCBI](https://www.ncbi.nlm.nih.gov/), consists of the DNA sequence.
This is because, they used the **reverse transcriptase** enzyme for the virus genome sequence classification, and the result is what is known as a **cDNA**.

For this reason we need to get the complimentary, to retrieve the genome of the virus.

## DATA
[About NC-045512](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512)   
[NC-045512 data file](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512.2?report=fasta)

**NC-045512** is one of the first strand discovered in China.


[About MN988668](https://www.ncbi.nlm.nih.gov/nuccore/MN988668)   
[MN988668 data file](https://www.ncbi.nlm.nih.gov/nuccore/MN988668.1?report=fasta)

The data files contain the cDNA, with first line being the ID for the genome and rest is the cDNA sequence.

The scripts create a complimentary sequence for this sequence to retrieve the originel sequence of the virus.
