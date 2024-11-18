fs::dir_tree(("~/Documents/Daur2"))

#  link to project repo
# https://github.com/ProjecticumDataScience/minion_seq.git


# introduction

#In this section we will be using coverage data derived from two mouse samples from the study
# 
# Formating coverage data
# 
# Before we get started we need to do some preliminary data preparation to use genCov().
# First off genCov() expects coverage data to be in the form of a named list of data frames
# with list names corresonding to sample id’s and column names “chromosome”,
# “end”, and “cov”

# https://genviz.org/module-03-genvisr/0003/04/01/gencov_GenVisR/

# we rename our data frame columns with colnames() and create an function including lapply
# to go through and split the data frame up into a list of data frames by sample.


# analyses  data raw_data  verslag README

# img
# ![half-size image](foo.jpg){#id .class width=50% height=50%}
