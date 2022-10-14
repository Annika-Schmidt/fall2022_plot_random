## PLOTRANDOM.R
## 
## PURPOSE: a function that will genrate a random sample
##          of normal deviates, plog a histogram and maybe provide some other stuff


plotRandomD <- function(numpts=100){hist(rnorm(numpts))}
plotRandomD()


#################################
## Lets build in more flexibilty for our function: 

plotrandomnormals <- function (numpts=1000, mu=24, sigma=3, numbins=15, 
                               title = "MY histogram, oct 14 2022", meanColor= "red", 
                               seed=8675309)  
  { set.seed(seed)
  randx <-rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(randx)
  hist(randx, breaks=numbins, main=title)
  abline(v=mean_x, col=meanColor)
list  (mean_x= mean_x,STD_x= sd(randx), RandomVAlues =  randx) }
plotrandomnormals()
