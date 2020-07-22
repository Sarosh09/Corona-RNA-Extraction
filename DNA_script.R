# Adenine (A), Thymine (T), Cytosine (C), Guanine (G)
# 
# DNA complementary base pairing rule
# A -> T
# C -> G
# G -> C
# T -> A

temp_DNA <- character()           # Template DNA Sequence
reve_Sequence <- character()      # Reverse DNA Sequence
comp_DNA <- character()           # Complementary DNA Sequence
reve_comp_DNA <- character()      # Reverse-Complement DNA Sequence
curr_base <- character()          # Holds one base from template DNA Sequence

temp_DNA <- "ATGCCGCTAAACTGACATXXTCAGATC"

#===== a- Reverse DNA ===========================================================
reve_Sequence <- ''               # Make sure the reve_Sequence is empty
# You need for loob here to reverse the DNA sequenc
for(i in nchar(temp_DNA):1){
  curr_base <- substr(temp_DNA,i,i)
  reve_Sequence <- paste(reve_Sequence, curr_base, sep = "")
}
print(temp_DNA)
print(reve_Sequence)
#================================================================================


#===== b- Complementary DNA Sequence ============================================
comp_DNA <- ''                    # Make sure the comp_DNA is empty
# You need 'for' loob to read the template DNA sequenc and 'if'
# statments to add the complement base to the 'comp_DNA'

for(i in 1:nchar(temp_DNA)){
  curr_base <- substr(temp_DNA,i,i)
  if(curr_base == "A"){
    comp_DNA <- paste(comp_DNA, "T", sep = "")
  } else if(curr_base=="C"){
    comp_DNA <- paste(comp_DNA, "G", sep = "")
  } else if(curr_base == "G"){
    comp_DNA <- paste(comp_DNA, "C", sep = "")
  } else if(curr_base == "T"){
    comp_DNA <- paste(comp_DNA, "A", sep = "")
  } else{
    comp_DNA <- paste(comp_DNA, "?", sep = "")
    print(paste("Unknown base at: ", i)) 
    print(i)
  }
}
print(temp_DNA)
print(comp_DNA)
# ===============================================================================


# c- Reverse-Complement DNA Sequence ============================================
reve_comp_DNA <- ''               # Make sure reve_comp_DNA is empty
# You need 'for' loop to read the template DNA sequenc and 'if'
# statements to add the complement base to the 'comp_DNA' but in 
# reverse order
# 
for(i in 1:nchar(temp_DNA)){
  curr_base <- substr(temp_DNA,i,i)
  if(curr_base == "A"){
    reve_comp_DNA <- paste(reve_comp_DNA, "T", sep = "")
  } else if(curr_base=="C"){
    reve_comp_DNA <- paste(reve_comp_DNA, "G", sep = "")
  } else if(curr_base == "G"){
    reve_comp_DNA <- paste(reve_comp_DNA, "C", sep = "")
  } else if(curr_base == "T"){
    reve_comp_DNA <- paste(reve_comp_DNA, "A", sep = "")
  } else{
    reve_comp_DNA <- paste(reve_comp_DNA, "?", sep = "")
    print(paste("Unknown base at: ", i)) 
    print(i)
  }
}
print(temp_DNA)
print(reve_comp_DNA)
# ===============================================================================

