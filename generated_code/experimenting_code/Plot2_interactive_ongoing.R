library(plotly)
x = seq(-5,5,0.15)
index = 0 
final_data = data.frame(a = numeric(),b = numeric(),c= numeric(),
                        d = numeric(),e = numeric(),f= numeric())
for (sd in seq(1,2,0.1)) {
  index = index + 1
  y = dnorm(x,mean = 0,sd = sd)
  text1 = paste0('S  =  $\\frac{',sd *67,'}{66}$')
  text2 = paste0('$\\sigma =  \\frac{',sd *67,'}{67}$')
  plot2_data_in_loop = cbind(x,y,sd,text1,text2,index)
  final_data = rbind(final_data,plot2_data_in_loop)}

final_data = final_data %>% 
  mutate_at(c(1,2,3,6),as.character) %>% 
  mutate_at(c(1,2,3,6),as.numeric) %>% 
  mutate_at(c(4,5), as.character)
  
  
plot_ = final_data  %>% 
  ggplot(data =.,aes(x = x,y = y)) + 
  geom_line(aes(frame = sd)) + 
  labs(title = 'Relatioship between Standard Deviation & Distrbution') + 
  theme_classic() + 
  lims(y = c(0,0.5)) #+ 
  annotate(geom = 'text',x = -4, y = 0.4, label = TeX(text1)) + 
  annotate(geom = 'text',x = -4, y = 0.3, label = TeX(text2))

a <- list(
    x = final_data$x,
    y = final_data$y,
    text = TeX(text1),
    xref = "x",
    yref = "y",
    showarrow = TRUE,
    arrowhead = 7,
    ax = -4,
    ay = 0.4)

ggplotly(plot_) %>% add_markers() %>% layout(annotations = a)
