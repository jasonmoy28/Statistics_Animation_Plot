

```{r setup, include=FALSE}
#Must changed to the local clone repository path
clone_repository_path = 'C:/Users/Kate/Documents/GitHub/Statistics_Animation_Plot' #edit here
source(paste(clone_repository_path,'/saveGIF_simple_git_ver.R',sep = '')) # run the saveGIF_simple function 
```
loadfonts(device = "win")
install.packages("extrafont")
install.packages("xkcd")
library(xkcd)
library(extrafont)


```{r,echo = F,comment = NA}
x = seq(-5,5,0.15)
saveGIF_simple(
  loop_object = 
    for (sd in seq(1,3.5,length.out = 80)) {
      y = dnorm(x,mean = 0,sd = sd)
      plot2_data_in_loop = as.data.frame(cbind(x, y,sd))
      text1 = paste0('$S^2  =  \\frac{',round_simple(sd^2*66,3),'}{66}$ = ', round_simple(sd^2,3))
      text2 = paste0('$\\sigma^2 =  \\frac{',round_simple(sd^2 *66,3),'}{67}$ = ',round_simple((sd^2*66)/67,3))
      text1_converted = TeX(text1)
      text2_converted = TeX(text2)
      plot_ = plot2_data_in_loop %>% 
        ggplot(data =.,aes(x = x,y = y)) + 
        geom_line(color = "blue", size = 2) +   
        labs(title = 'Relationship between the Shape\nof the Distribution & Variance',
             y = 'Proportion of Scores') + 
        theme_xkcd() + 
        lims(y = c(0,0.5)) + 
        annotate(geom = 'text',x = 2.5, y = 0.45, family = "xkcd", color = "purple4", size = 6, label = text1_converted) + 
        annotate(geom = 'text',x = -2.5, y = 0.45, family = "xkcd", color = "purple4", size = 6, label = text2_converted) +
        theme(axis.line = element_line(size = 1))
      print(plot(plot_))}, 
  movie_name = 'Plot2xkcd_82920_v1b_increase.gif', 
  clone_repository_path = clone_repository_path,
  loop_speed = 0.01, loop_number = 1)
```