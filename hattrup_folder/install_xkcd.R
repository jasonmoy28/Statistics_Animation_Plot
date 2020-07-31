#These are instructions to download and install xkcd fonts
#Make sure you download xkcd fonts to your device first
font_import(paths = getwd(), pattern = "[X/x]kcd", prompt=FALSE)

loadfonts(device = "win")
install.packages("extrafont")
install.packages("xkcd")
library(xkcd)
library(extrafont)

#Here is a test
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
