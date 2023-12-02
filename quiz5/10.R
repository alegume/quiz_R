library(nortest)
modelos_1990<- c(281,359,247,470,432,194,306,210,305,430,200,223,388,480,291,190,300,235,241,380)
modelos_2000 <- c(140,160,22,20,223,60,30,95,360,70,218,300,217,58,235,280,200,175,85,65)

s1 = var(modelos_1990)
s2 = var(modelos_2000)
s1
s2
t = s2 / s1
round(t ,2)
?pf(t, 19, 19, lower.tail = F)

m = 19
n = df1 = df2 = 19
fa <- function(x) (gamma((df1 + df2)/2)/(gamma(df1/2)*gamma(df2/2)))*(df1^(df1/2))*(df2^(df2/2))*
  (x^((df1/2)-1))*((df1*x+df2)^(-(df1+df2)/2))

l = integrate(fa, 0, t)
df(t, 19, 19)

d = var.test(modelos_2000,modelos_1990, alternative = "two.sided")
d
g = var.test(modelos_2000,modelos_1990, alternative = "greater")
g
# pf(3, 15, 12) - pf(1, 15, 12)
