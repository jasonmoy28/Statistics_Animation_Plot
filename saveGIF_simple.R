saveGIF_simple <- function(loop_object,movie_name,loop_number = 1,loop_speed = 0.1) {
  # movie_name do not want full path, name only 
  # loop_number (default 1) specify number of loop you want to see for the gif 
  # loop_speed (default 0.1) is the number of frame per seconds
  library('animation')
  library('tidyverse')
  library('latex2exp')
  saveGIF({loop_object}, movie.name = movie_name ,... = ani.options(interval = loop_speed, loop = loop_number))
}