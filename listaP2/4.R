n = 85
x <- 10
pchapeu <- x/n
pchapeu
qchapeu <- 1 - pchapeu
qchapeu
n*pchapeu
n*qchapeu
alpha = 0.05

z <- qnorm(alpha/2, lower.tail=F)
LI = -z * sqrt( (pchapeu * (1 - pchapeu)) / n)
LS = +z * sqrt( (pchapeu * (1 - pchapeu)) / n)
cat (LI, LS)
round(pchapeu + LI, 2)
round(pchapeu + LS, 2)

round(pchapeu - 1.96*sqrt((.12*.88)/85), 2)
round(pchapeu + 1.96*sqrt((.12*.88)/85), 2)

