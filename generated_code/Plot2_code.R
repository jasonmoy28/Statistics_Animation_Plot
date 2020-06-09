#Must changed to the local clone repository path
clone_repository_path = '/Users/Jasonmoy/Desktop/Hattrup_Lab/Statistics_Animation_Plot' #edit here
source(paste(clone_repository_path,'/saveGIF_simple_git_ver.R',sep = '')) # run the saveGIF_simple function 

# Graph created here 
x = seq(-5,5,0.15)
loop_counter = 0

saveGIF_simple(
  loop_object = 
    for (sd in seq(1,3.5,.05)) {
      loop_counter = loop_counter + 1 
      y = dnorm(x,mean = 0,sd = sd)
      plot2_data_in_loop = as.data.frame(cbind(x, y,sd))
      text1 = paste0('$S^2  =  \\frac{',sd *67,'}{66}$')
      text2 = paste0('$\\sigma^2 =  \\frac{',sd *67,'}{67}$')
      text1_converted = TeX(text1)
      text2_converted = TeX(text2)
      plot_ = plot2_data_in_loop %>% 
        ggplot(data =.,aes(x = x,y = y)) + 
        geom_line() + 
        labs(title = 'Relationship between Standard Deviation & Distrbution',
             y = 'Frequency') + 
        theme_classic() + 
        lims(y = c(0,0.5)) + 
    annotate(geom = 'text',x = -4, y = 0.4, label = text1_converted) + 
    annotate(geom = 'text',x = -4, y = 0.3, label = text2_converted)
  print(plot(plot_))}, 
  movie_name = 'Plot2.gif', 
  clone_repository_path = clone_repository_path,
  loop_speed = 0.4, loop_number = 1)


  