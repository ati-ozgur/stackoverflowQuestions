library(ggplot2)
set.seed(1410) # Make the sample reproducible
dsmall <- diamonds[sample(nrow(diamonds), 100), ]
qplot(carat, price, data = diamonds)
qplot(log(carat), log(price), data = diamonds)
qplot(carat, x * y * z, data = diamonds)
qplot(carat, price, data = dsmall, colour = color)
qplot(carat, price, data = dsmall, shape = cut)



qplot(carat, price, data = diamonds, alpha = I(1/10))
qplot(carat, price, data = diamonds, alpha = I(1/100))
qplot(carat, price, data = diamonds, alpha = I(1/200))


qplot(carat, price, data = dsmall, geom = c("point", "smooth"))
qplot(carat, price, data = diamonds, geom = c("point", "smooth"))
qplot(log(carat), log(price), data = diamonds, geom = c("point", "smooth"))

qplot(carat, price, data = dsmall, geom = c("point", "smooth"),
      span = 0.2)
qplot(carat, price, data = dsmall, geom = c("point", "smooth"),
      span = 1)



library(mgcv)
qplot(carat, price, data = dsmall, geom = c("point", "smooth"),method = "gam", formula = y ~ s(x))
qplot(carat, price, data = dsmall, geom = c("point", "smooth"),
      method = "gam", formula = y ~ s(x, bs = "cs"))

library(splines)
qplot(carat, price, data = dsmall, geom = c("point", "smooth"),
      method = "lm")
qplot(carat, price, data = dsmall, geom = c("point", "smooth"),
      method = "lm", formula = y ~ ns(x,5))
