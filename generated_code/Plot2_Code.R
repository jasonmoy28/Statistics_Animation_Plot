source('~/Desktop/Hattrup Lab/Statistics_Animation_Plot/saveGIF_simple.R')

x = seq(-5,5,0.15)
saveGIF_simple(
  loop_object = for (sd in seq(1,3.5,.05)) {
  y = dnorm(x,mean = 0,sd = sd)
  plot2_data_in_loop = as.data.frame(cbind(x, y,sd))
  plot_ = plot2_data_in_loop %>% 
    ggplot(data =.,aes(x = x,y = y)) + 
    geom_line() + 
    labs(title = paste('Standard Deviation: ',sd)) + 
    lims(y = c(0,0.5))
  print(plot(plot_))}
  , movie_name = 'Plot2.gif')



  