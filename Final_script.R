# Adenine (A), Thymine (T), Cytosine (C), Guanine (G), Uracil (U)
# 
# DNA complementary base pairing rule
# A -> T
# C -> G
# G -> C
# T -> A

# RNA complementary base pairing rule
# A -> U
# C -> G
# G -> C
# T -> A

library(readr)

temp_DNA <- character()           # Template DNA Sequence
comp_RNA <- character()           # Complementary RNA Sequence
curr_base <- character()          # Holds one base from template DNA Sequence

# To choose the file everytime from the list of files,
# instead of strenously providing the path for the file everytime.
covid_cDNA <- read.delim(file.choose(), header = TRUE)

covid_sequence <- data.frame(matrix(ncol = 1, nrow = nrow(covid_cDNA))) 
names(covid_sequence)[1] <- paste(names(covid_cDNA)[1], 'RNA sequence')



#===== Retrive RNA from the cDNA Sequence ============================================
# To get the header
write_delim(data.frame(names(covid_sequence)), 'covid_sequence.txt', append = FALSE)

for (j in 1:nrow(covid_cDNA)) {
  comp_RNA <- ''                        # Make sure the comp_RNA is empty
  temp_DNA <- covid_cDNA[j,]
  for(i in 1:nchar(temp_DNA)){
    curr_base <- substr(temp_DNA,i,i)
    if(curr_base == "A"){
      comp_RNA <- paste(comp_RNA, "U", sep = "")
    } else if(curr_base=="C"){
      comp_RNA <- paste(comp_RNA, "G", sep = "")
    } else if(curr_base == "G"){
      comp_RNA <- paste(comp_RNA, "C", sep = "")
    } else if(curr_base == "T"){
      comp_RNA <- paste(comp_RNA, "A", sep = "")
    } else{
      comp_RNA <- paste(comp_RNA, "?", sep = "")
      print(paste("Unknown base at: ", i)) 
      print(i)
    }
  }
  # If you want to see each line with it's compliment,
  # uncomment the lines below, but before that,
  # it is advisable to reduce the no. of rows,
  # otherwise you will see more than 400 lines bunched up.
  # print(paste('j = ', j))
  # print(paste('temp_DNA: ', temp_DNA))
  # print(paste('comp_RNA: ', comp_RNA))
  covid_sequence[j,] <- comp_RNA
  write_delim(data.frame(comp_RNA), 'covid_sequence.txt', delim = " ", na = "NA", append = TRUE)
}

# If you want to see the reverse compliment of the sequence,
# reverse the range in the for loops.
# ===============================================================================
