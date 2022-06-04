# amazon deforestation

X <- read.csv('data/Amazon deforestation from wikipedia - Sheet1.csv',header=1,as.is=T)
head(X)
names(X) <- c('Period','Year','ForestCover.km2','AnnualForestLoss.km2','Percent1970remaining','TotalLossSince1970.km2')
str(X)
X$AnnualForestLoss.km2[1] <- NA
X$AnnualForestLoss.km2 <- as.numeric(X$AnnualForestLoss.km2)

op=par(mar=c(5,5,2,5))
plot(X$Year,X$ForestCover,ylim=c(0,4100000),type='b',pch=19,cex=2,xlab='Year',ylab='Remaining Forest Cover (km2)',cex.lab=2)
points(X$Year,X$AnnualForestLoss.km2*50,type='b',pch=19)
axis(4,at=seq(0,2e6,by=1e6),labels = seq(0,2e6,by=1e6)/50)
