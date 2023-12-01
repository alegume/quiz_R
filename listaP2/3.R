d=c(19.8, 10.1, 14.9, 7.5, 15.4, 15.4,15.4, 18.5, 7.9, 12.7, 11.9, 11.4,11.4, 14.1, 17.6, 16.7, 15.8,19.5, 8.8, 13.6, 11.9, 11.4)

xbar <- mean(d)
s <- sd(d)
n <- length(d)
df <- n-1
alfa <- 0.05
t <- qt(alfa/2,df, lower.tail=FALSE)
t
LI <- xbar-t*(s/sqrt(n))
LS <- xbar+t*(s/sqrt(n))
IC <- c(LI, LS)
IC
summary(d)
t
xbar


xbar +  2.079614 * s / sqrt(n)
xbar - 2.079614 * s / sqrt(n)
s

13.71-2.08*3.55/4.7

######### 4

n = 85
x <- 10
pchapeu <- x/n
pchapeu
qchapeu <- 1 - pchapeu
qchapeu

n*pchapeu
n*qchapeu


pchapeu + c()




