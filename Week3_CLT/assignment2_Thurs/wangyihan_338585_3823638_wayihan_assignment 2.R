library(Lahman)
Warning message:
  package 'Lahman' was built under R version 3.3.2 
data("salaries")
Warning message:
  In data("salaries") : data set 'salaries' not found
data("Salaries")
money15 = subset(Salaries, yearID==2015)
head(money15)

hist(money15$salary, main="distribution of salary")
avg=mean(money15$salary)
SD=sd(money15$salary)
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(frequency(money15$salary, na.rm=TRUE), col="red")

meansVector = function(times, size, dat, varb){
  a = as.numeric(times)
  b = as.numeric(size)
  v = c()
  for(i in 1:a){
    y = sample(dat[,varb],b,replace=TRUE)
    m = mean(y)
    v = c(v,m)
  }
  v
}

meansVector(10, 5, money15, "salary")
hist() 

  
data("mtcars")
hist(mtcars$mpg)

hist(mtcars$mpg, main = "distribution of mpg", breaks=10)
avg=mean(mtcars$mpg)
SD=sd(mtcars$mpg)
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(density(mtcars$mpg, na.rm=TRUE), col = "red")

library(Lahman)
data(Batting)
bat15 = subset(Batting, yearID==2015 & AB>200)
bat15$avg = bat15$H/bat15$AB
hist(bat15$avg, breaks=30, freq=FALSE)
lines(density(bat15$avg), col="red")

sd = sd(bat15$avg)
se = sd/sqrt(length(bat15$avg))
CI.lo = mean(bat15$avg) - se*(qnorm(0.025))
CI.hi = mean(bat15$avg) + se*(qnorm(0.025))

# Exercise1
data("Salaries")
money15 = subset(Salaries, yearID==2014)
head(money15)

hist(money15$salary, main="distribution of salary")
avg=mean(money15$salary)
SD=sd(money15$salary)
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(frequency(money15$salary, na.rm=TRUE), col="red")

meansVector(10,50, money15, "salary")
hist(meansVector(10,50, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(10,50, money15, "salary"))
SD=sd(meansVector(10,50, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(density("meansVector(10,50, money15, "salary), na.rm=TRUE), col="red")

meansVector(20,100, money15, "salary")
hist(meansVector(20,100, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(20,100, money15, "salary"))
SD=sd(meansVector(20,100, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(40,100, money15, "salary")
hist(meansVector(40,100, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(40,100, money15, "salary"))
SD=sd(meansVector(40,100, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(80,100, money15, "salary")
hist(meansVector(80,100, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(80,100, money15, "salary"))
SD=sd(meansVector(80,100, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(160,100, money15, "salary")
hist(meansVector(160,100, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(160,100, money15, "salary"))
SD=sd(meansVector(160,100, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(320,100, money15, "salary")
hist(meansVector(320,100, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(320,100, money15, "salary"))
SD=sd(meansVector(320,100, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(320,100, money15, "salary")
hist(meansVector(320,100, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(320,100, money15, "salary"))
SD=sd(meansVector(320,100, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,10, money15, "salary")
hist(meansVector(1280,10, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(1280,10, money15, "salary"))
SD=sd(meansVector(1280,10, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,20, money15, "salary")
hist(meansVector(1280,20, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(1280,20, money15, "salary"))
SD=sd(meansVector(1280,20, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(meansVector(1280,20, money15, "salary"), col="red")

meansVector(1280,40, money15, "salary")
hist(meansVector(1280,40, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(1280,40, money15, "salary"))
SD=sd(meansVector(1280,40, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(meansVector(1280,40, money15, "salary"), col="red")

meansVector(1280,80, money15, "salary")
hist(meansVector(1280,80, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(1280,80, money15, "salary"))
SD=sd(meansVector(1280,80, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(meansVector(1280,80, money15, "salary"), col="red")

meansVector(1280,160, money15, "salary")
hist(meansVector(1280,160, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(1280,160, money15, "salary"))
SD=sd(meansVector(1280,160, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(meansVector(1280,160, money15, "salary"), col="red")

meansVector(1280,320, money15, "salary")
hist(meansVector(1280,320, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(1280,320, money15, "salary"))
SD=sd(meansVector(1280,320, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(meansVector(1280,320, money15, "salary"), col="red")

meansVector(1280,640, money15, "salary")
hist(meansVector(1280,640, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(1280,640, money15, "salary"))
SD=sd(meansVector(1280,640, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(meansVector(1280,640, money15, "salary"), col="red")

meansVector(1280,2560, money15, "salary")
hist(meansVector(1280,2560, money15, "salary"), main = "distribution of salary")
avg=mean(meansVector(1280,2560, money15, "salary"))
SD=sd(meansVector(1280,2560, money15, "salary"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))
lines(meansVector(1280,2560, money15, "salary"), col="red")

#Exercise2
data("mtcars")
hist(mtcars$mpg)

meansVector(10,50, mtcars, "mpg") 
hist(meansVector(10,50, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(10,50, mtcars, "mpg"))
SD=sd(meansVector(10,50, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(20,50, mtcars, "mpg")
hist(meansVector(20,50, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(20,50, mtcars, "mpg"))
SD=sd(meansVector(20,50, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(40,50, mtcars, "mpg") 
hist(meansVector(40,50, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(40,50, mtcars, "mpg"))
SD=sd(meansVector(40,50, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(80,50, mtcars, "mpg") 
hist(meansVector(80,50, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(80,50, mtcars, "mpg"))
SD=sd(meansVector(80,50, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(160,50, mtcars, "mpg") 
hist(meansVector(160,50, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(160,50, mtcars, "mpg"))
SD=sd(meansVector(160,50, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(320,50, mtcars, "mpg") 
hist(meansVector(320,50, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(320,50, mtcars, "mpg"))
SD=sd(meansVector(320,50, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(320,50, mtcars, "mpg") 
hist(meansVector(320,50, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(320,50, mtcars, "mpg"))
SD=sd(meansVector(320,50, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,10, mtcars, "mpg") 
hist(meansVector(1280,10, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,10, mtcars, "mpg"))
SD=sd(meansVector(1280,10, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,20, mtcars, "mpg") 
hist(meansVector(1280,20, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,20, mtcars, "mpg"))
SD=sd(meansVector(1280,20, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,40, mtcars, "mpg") 
hist(meansVector(1280,40, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,40, mtcars, "mpg"))
SD=sd(meansVector(1280,40, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,80, mtcars, "mpg") 
hist(meansVector(1280,80, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,80, mtcars, "mpg"))
SD=sd(meansVector(1280,80, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,160, mtcars, "mpg") 
hist(meansVector(1280,160, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,160, mtcars, "mpg"))
SD=sd(meansVector(1280,160, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,160, mtcars, "mpg") 
hist(meansVector(1280,160, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,160, mtcars, "mpg"))
SD=sd(meansVector(1280,160, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,160, mtcars, "mpg") 
hist(meansVector(1280,160, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,160, mtcars, "mpg"))
SD=sd(meansVector(1280,160, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,320, mtcars, "mpg") 
hist(meansVector(1280,320, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,320, mtcars, "mpg"))
SD=sd(meansVector(1280,320, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,640, mtcars, "mpg") 
hist(meansVector(1280,640, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,640, mtcars, "mpg"))
SD=sd(meansVector(1280,640, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,1280, mtcars, "mpg") 
hist(meansVector(1280,1280, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,1280, mtcars, "mpg"))
SD=sd(meansVector(1280,1280, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))

meansVector(1280,2560, mtcars, "mpg") 
hist(meansVector(1280,2560, mtcars, "mpg"), main = "distribution of mpg", breaks=10)
avg=mean(meansVector(1280,2560, mtcars, "mpg"))
SD=sd(meansVector(1280,2560, mtcars, "mpg"))
abline(v=avg, col="blue")
legend("topright", legend = c(paste0("mean=", avg), paste0("SD=", SD)),text.col=c("blue", "dark green"))