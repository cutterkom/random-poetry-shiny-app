library(tidyverse)
library(markovchain)

# named list of poets; by naming the list ui.R shows the names rather than the values
poets <- list("Rupi Kaur" = "rupi_kaur",
              "Erich Fried" = "erich_fried")

generate_random_poem <- function(input_select) {
  load(file = paste0(input_select, ".Rdata"))
  
  # randomly assign the number of lines the poem should have
  # assign different number of words per line
  # create a list with lines
  list <- rerun(sample(4:10, 1, replace = T), paste(markovchainSequence(n = sample(2:10, 1), markovchain = poem_fit$estimate), collapse = " ")) 
  
  # add a <br/> after every line and unlist it
  list <- map(1:length(list), function(i) {
    list[[i]] <- paste0(list[[i]], "<br/>")
  }) %>% unlist
  
  return(list)
}