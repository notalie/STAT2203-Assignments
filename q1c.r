n = 250
u = runif(n, min=0, max=20)
X = log(2/(u - 1) + 1)
hist(X,freq=FALSE)
x =seq(from=0,to=1,length=100)
lines(x, 2/x^2,lwd=5)
