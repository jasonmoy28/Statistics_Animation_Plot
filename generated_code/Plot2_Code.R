source('~/Desktop/Hattrup Lab/Statistics_Animation_Plot/saveGIF_simple.R')

x = seq(-5,5,0.15)
saveGIF_simple(
  loop_object = 
    for (sd in seq(1,3.5,.05)) {
      y = dnorm(x,mean = 0,sd = sd)
      plot2_data_in_loop = as.data.frame(cbind(x, y,sd))
      text1 = paste0('S  =  $\\frac{',sd *67,'}{66}$')
      text2 = paste0('$\\sigma =  \\frac{',sd *67,'}{67}$')
      text1_converted = TeX(text1)
      text2_converted = TeX(text2)
      plot_ = plot2_data_in_loop %>% 
        ggplot(data =.,aes(x = x,y = y)) + 
        geom_line() + 
        labs(title = 'Relatioship between Standard Deviation & Distrbution') + 
        theme_classic() + 
        lims(y = c(0,0.5)) + 
    annotate(geom = 'text',x = -4, y = 0.4, label = text1_converted) + 
    annotate(geom = 'text',x = -4, y = 0.3, label = text2_converted)
  print(plot(plot_))}
  , movie_name = 'Plot2.gif')



  