source('~/Desktop/Hattrup Lab/Statistics_Animation_Plot/saveGIF_simple.R') #call the function saveGIF_simple

x = seq(0,20,length = 1000)
saveGIF({for (df in seq(3,15,.5)) {
  # Edit generation of data here 
  y = dchisq(x,df)
  mean = mean(y)
  median = median(y)
  plot1_data_in_loop = as.data.frame(cbind(x,y,mean,median,index))
  # Edit ggplot here 
  plot_ = ggplot(data = plot1_data_in_loop,aes(x = x,y = y)) + 
    lims(x = c(0,20), y = c(0,0.25)) + 
    geom_line()
  print(plot(plot_))
}},... = ani.options(interval = .1))
