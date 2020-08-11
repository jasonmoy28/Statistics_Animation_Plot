library('animation')
library('tidyverse')
library('latex2exp')
library('glue')

saveGIF_simple <- function(loop_object,clone_repository_path,movie_name, loop_number = 1,loop_speed = 0.4) {
  # stored path expect path to store (e.g. /Users/Desktop/Folder)
  # movie_name exepect name (e.g. plot.gif)
  # loop_number (default 1) specify number of loop you want to see for the gif 
  # loop_speed (default 0.1) is the number of frame per seconds
  save_path = paste('generated_graph/',movie_name,sep = '')
  saveGIF({loop_object}, movie.name = save_path,... = ani.options(interval = loop_speed, loop = loop_number))
}

round_simple <- function(var, number_of_decimals) {
  format(round(var, digits = number_of_decimals),nsmall = number_of_decimals)
  
}
