library(extrafont)
library(ggplot2)
if('xkcd' %in% fonts()) {
  + p <- ggplot() + geom_point(aes(x=mpg, y=wgt), data=mtcars) 
    + theme(text = element_text(size=16, family = "xkcd")) +
    +} else {
    + warning("No xkcd fonts installed")
    + p <- ggplot() + geom_point(aes, x=mpg, y=wt), data=mtcars
    +  }
p

install.packages("xkcd", dependencies = TRUE)
library(xkcd)


if('xkcd' %in% fonts()) {
  p <- ggplot() +
  geom_point(aes(x=mpg, y=wt), data=mtcars) +
  theme(text = element_text(size=16, family="xkcd"))
} else  {
  warning("No xkcd fonts found")
  p <- ggplot() +
  geom_point(aes(x=mpg, y=wt), data=mtcars)
}
p

loadfonts(device = "win")
    
download.file("http://simonsoftware.se/other/xkcd.ttf", dest="xkcd.ttf", mode="wb")
system("mkdir ~/.fonts")
system("cp xkcd.ttf ~/.fonts")

fonts()
fonttable()
if(.Platform$OS.type != "unix") {  ## Register fonts for Windows bitmap output
    loadfonts(device="win")
} else {
    loadfonts()
}
fonts()

install.packages("extrafont")
library(extrafont)

font_import(paths = getwd(), pattern = "[X/x]kcd", prompt=FALSE)
warnings()


xrange <- range(mtcars$mpg)
yrange <- range(mtcars$wt)
set.seed(123) # for reproducibility
p <- ggplot() + geom_point(aes(mpg, wt), data=mtcars) +
  xkcdaxis(xrange,yrange)
p





