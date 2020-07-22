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

temp_DNA <- character()           # Template DNA Sequence
reve_Sequence <- character()      # Reverse DNA Sequence
comp_RNA <- character()           # Complementary RNA Sequence
reve_comp_RNA <- character()      # Reverse-Complement RNA Sequence
curr_base <- character()          # Holds one base from template DNA Sequence

temp_RNA <- "AUGCCGCUAAACUGACAUXXUCAGAUC"     # use this sequence for the Reverse    
temp_DNA <- "ATGCCGCTAAACTGACATXXTCAGATC"

#===== a- Reverse RNA Sequence ==================================================
reve_Sequence <- ''               # Make sure the reve_Sequence is empty
# You need for loop here to reverse the RNA sequence
for(i in nchar(temp_RNA):1){
  curr_base <- substr(temp_RNA,i,i)
  reve_Sequence <- paste(reve_Sequence, curr_base, sep = "")
}
print(temp_RNA)
print(reve_Sequence)
#================================================================================


#===== b- Complementary RNA Sequence ============================================
comp_RNA <- ''    # Make sure the comp_RNA is empty
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
print(temp_DNA)
print(comp_RNA)
# ===============================================================================



# ===============================================================================
# e- Reverse-Complement RNA Sequence
reve_comp_RNA <- ''
for(i in nchar(temp_DNA):1){
  curr_base <- substr(temp_DNA,i,i)
  if(curr_base == "A"){
    reve_comp_RNA <- paste(reve_comp_RNA, "U", sep = "")
  } else if(curr_base=="C"){
    reve_comp_RNA <- paste(reve_comp_RNA, "G", sep = "")
  } else if(curr_base == "G"){
    reve_comp_RNA <- paste(reve_comp_RNA, "C", sep = "")
  } else if(curr_base == "T"){
    reve_comp_RNA <- paste(reve_comp_RNA, "A", sep = "")
  } else{
    reve_comp_RNA <- paste(reve_comp_RNA, "?", sep = "")
    print(paste("Unknown base at: ", i)) 
    print(i)
  }
}
print(temp_DNA)
print(reve_comp_RNA)
# ===============================================================================