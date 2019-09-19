phq=x[,c(2,4,354:362)]
sapply(3:11,function(i) levels(phq[,i])<<-c(1,2,3,4))
sapply(3:11,function(i) phq[,i]<<-as.numeric(phq[,i]))


phq.r=data.frame(cbind(phq[,3:11],phq$login,phq$Asmnt,
                        rowSums(phq[,3:11]),
                        exp(rowMeans(log(phq[,3:11])))))

colnames(phq.r)[-c(1:9)]=c("id","time","score","mscore")
levels(phq.r$time)=c(1,2,4)

nid=phq.r$id[table(phq.r$id)==3]
par(mfrow=c(1,3))
#dist plot
#baseline
plot0=hist(phq.r$score.0,main=paste("Baseline"),xlab="PHQ-9 sum",prob=T,ylim=c(0,.1));
lines(density(phq.r$score.1), # density plot
      lwd = 2, # thickness of line
      col = "blue")
curve(dnorm(x, mean=mean(phq.r$score.0), sd=sd(phq.r$score.0)),
        col="red", lwd=2, add=TRUE)
curve(dlnorm(x, mean=mean(log(phq.r$score.0)), sd=sd(log(phq.r$score.0))),
      col="green", lwd=2, add=TRUE)
se.0=sapply(1:length(plot0$counts), function(i) sd(phq.r$score.0[phq.r$score.0>plot0$breaks[i] & phq.r$score.0<=plot0$breaks[i+1]]))/sqrt(plot0$counts)


plot1=hist(phq.r$score.1,main=paste("One Month"),xlab="PHQ-9 sum",prob=T,ylim=c(0,.1));
lines(density(phq.r$score.1), # density plot
      lwd = 2, # thickness of line
      col = "blue")
curve(dnorm(x, mean=mean(phq.r$score.1), sd=sd(phq.r$score.1)),
      col="red", lwd=2, add=TRUE)
curve(dlnorm(x, mean=mean(log(phq.r$score.1)), sd=sd(log(phq.r$score.1))),
      col="green", lwd=2, add=TRUE)
se.1=sapply(1:length(plot1$counts), function(i) sd(phq.r$score.1[phq.r$score.1>plot1$breaks[i] & phq.r$score.1<=plot1$breaks[i+1]]))/sqrt(plot1$counts)

plot3=hist(phq.r$score.3,main=paste("Three Month"),xlab="PHQ-9 sum",prob=T,ylim=c(0,.1));
lines(density(phq.r$score.3), # density plot
      lwd = 2, # thickness of line
      col = "blue")
curve(dnorm(x, mean=mean(phq.r$score.3), sd=sd(phq.r$score.3)),
      col="red", lwd=2, add=TRUE)
curve(dlnorm(x, mean=mean(log(phq.r$score.3)), sd=sd(log(phq.r$score.3))),
      col="green", lwd=2, add=TRUE)
se.3=sapply(1:length(plot3$counts), function(i) sd(phq.r$score.3[phq.r$score.3>plot3$breaks[i] & phq.r$score.3<=plot3$breaks[i+1]]))/sqrt(plot3$counts)

par(mfrow=c(1,3))

plot(se.0[plot0$counts>=10],main="Baseline",ylab="SE",xlab="",xaxt='n')
plot(se.1[plot1$counts>=10],main="One Month",ylab="SE",xlab="",xaxt='n')
plot(se.3[plot3$counts>=10],main="Three Month",ylab="SE",xlab="",xaxt='n')

# inter-panel relations

phq.r2=data.frame(cbind(phq[,3:11],phq$login,phq$Asmnt,
                       rowSums(phq[,3:11]),
                       exp(rowMeans(log(phq[,3:11])))))
phq.r2=na.omit(phq.r2)
colnames(phq.r2)[-c(1:9)]=c("id","time","score","mscore")
levels(phq.r2$time)=c(1,2,4)
phq.r2=phq.r2[table(phq.r$id)==3,]


lmaf=(lm(score~(time==2)+(time==4),phq.r2))
AIC(lmaf)
summary(lmaf);confint(lmaf)

lmmfe=(lm(log(score)*exp(mean(log(score)))~(time==2)+(time==4),phq.r2))
AIC(lmmfe)
lmmf=(lm(log(score)~(time==2)+(time==4),phq.r2))
summary(lmmf);exp(confint(lmmf))

lmat=lm(score~poly(as.numeric(as.character(time)),2),phq.r2)
AIC(lmat);summary(lmat);confint(lmat)

lmmte=lm(log(score)*exp(mean(log(score)))~log(as.numeric(as.character(time))),phq.r2)
AIC(lmmte)
lmmt=lm(log(score)~as.numeric(as.character(time)),phq.r2)
summary(lmmt);exp(confint(lmmt))

library(nlme)

lari=lme(score~as.numeric(as.character(time)),random=~1|id,phq.r2)
laris=lme(score~as.numeric(as.character(time)),random=~1+as.numeric(as.character(time))|id,phq.r2)

lmrie=lme(log(score)*exp(mean(log(score)))~log(as.numeric(as.character(time))),random=~1|id,phq.r2)
lmri=lme(log(score)~log(as.numeric(as.character(time))),random=~1|id,phq.r2)

lmrise=lme(log(score)*exp(mean(log(score)))~log(as.numeric(as.character(time))),random=~1+log(as.numeric(as.character(time)))|id,phq.r2)
lmris=lme(log(score)~log(as.numeric(as.character(time))),random=~1+log(as.numeric(as.character(time)))|id,phq.r2)

# item-rest relations

fit.m=matrix(,ncol=5)
est.m=matrix(,ncol=8)
fit.a=matrix(,ncol=5)
est.a=matrix(,ncol=8)
irf<-function(i){
  phq.r2$rest=phq.r2$score-phq.r2[,i]
  phq.r2$item=phq.r2[,i]
  phq.r2$t=as.numeric(as.character(phq.r2$time))
  am=lme(rest~t+as.factor(item),random=~1+as.numeric(as.character(time))|id,phq.r2,control="optim")
  mm=lme(log(rest)~log(as.numeric(as.character(time)))+as.factor(item),random=~1+log(as.numeric(as.character(time)))|id,phq.r2,control=lmeControl(maxIter=1e8,msMaxIter=1e8))
  mme=lme(log(rest)*exp(mean(log(rest)))~log(as.numeric(as.character(time)))+as.factor(item),random=~1+log(as.numeric(as.character(time)))|id,phq.r2)
  fit.a<<-rbind(fit.a,c(AIC(am),anova(am)[3,]))
  fit.m<<-rbind(fit.m,c(AIC(mme),anova(mm)[3,]))
  est.a<<-rbind(est.a,cbind(summary(am)$tTable[3:5,],intervals(am,which="fixed")$fixed[3:5,]))
  est.m<<-rbind(est.m,cbind(summary(mm)$tTable[3:5,],exp(intervals(mm,which="fixed")$fixed[3:5,])))
  cat(i)
}

res.ir=sapply(c(1:2,4:9),irf)

write.csv(cbind(est.a,est.m),"item_rest_est.csv")
write.csv(cbind(fit.a,fit.m),"item_rest_fit.csv")

# item 3

phq.r2$rest=phq.r2$score-phq.r2[,2]
phq.r2$item=phq.r2[,2]
phq.r2$t=as.numeric(as.character(phq.r2$time))
library(lmer)
am=lme(rest~t+as.factor(item),random=~1|id,phq.r2,control="optim")
mm=lme(log(rest)~log(as.numeric(as.character(time)))+as.factor(item),random=~1|id,phq.r2,control=lmeControl(maxIter=1e8,msMaxIter=1e8))
mme=lme(log(rest)*exp(mean(log(rest)))~log(as.numeric(as.character(time)))+as.factor(item),random=~1+log(as.numeric(as.character(time)))|id,phq.r2)

