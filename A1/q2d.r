totalFailTime = c()
for (i in 1:10000) {
    test<-rexp(3, rate = 1)
    test = sort(test)
    secondComponent = test[2]
    spareComponent = rexp(1, rate = 1)
    lastComponent = test[3]
    totalFailTime[i] <- min(secondComponent + spareComponent, lastComponent)
}

hist(totalFailTime,freq=FALSE)
x = seq(from=0,to=1,length=100)
# Prints the mean
print(mean(totalFailTime))