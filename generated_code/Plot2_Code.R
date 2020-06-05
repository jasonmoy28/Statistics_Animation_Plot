source('~/Desktop/Hattrup Lab/Statistics_Animation_Plot/saveGIF_simple.R')
x = seq(-5,5,0.15)
saveGIF_simple(
for (sd in seq(1,5,.05)) {
  y = dnorm(x,mean = 0,sd = sd)
  plot2_data_in_loop = as.data.frame(cbind(x, y,sd))
  plot_ = plot2_data_in_loop %>% 
    ggplot(data =.,aes(x = x,y = y)) + 
    geom_line() + 
    labs(title = paste('Standard Deviation: ',sd))
  print(plot(plot_))
}, movie_name = 'Plot1.gif')



  