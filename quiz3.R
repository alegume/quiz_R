## Exercício 3
par(mfrow=c(1,2), pty="s") 
par(pty="s")

# fmp
#Eixos na mesma escala
x <- c(0, 1, 2, 3, 4)
f_x <- c(0.5, 0.3, 0.1, 0.05, 0.05)
plot(x, f_x, xlab="x", ylab = "p(x)", pch=16) 
segments (x, 0, x, f_x)

# fda
F_x <- c(0.5, 0.8, 0.9, 0.95, 1.0)
plot(x, F_x, xlab="x", ylab = "F(x)", pch=16)
segments(x, F_x, x+1, F_x)
points (1:4, F_x[1:4])


## Exercício 4
x <- seq(1, 3, 0.1)
theta <- 1
k <- 1
k2 <- 4

f <- function(x, k) { (k*theta^k) / x^(k+1) }

plot(x, f(x, k), type = "l", xlab = "x", ylab = "f(X)", xlim = c(1, 3), ylim = c(0, 4))
lines(x, f(x, k2), type = "l", xlab = "x", ylab = "f(X)", xlim = c(1, 3), ylim = c(0, 4))
abline(v = 1, lty = 3,  col = "red")


## Exercício 9.6
# Plotar a função densidade de probabilidade e a acumulada 
x <- seq(0,1,0.001)
fdp<- function (x) { (20*(x^8))*(1-x) }
fda<- function (x) { 10*(x^9) - 9*(x^10) }

par(mfrow=c(1,2), pty="s")
par(pty = "s")
# Eixos na mesma escala
plot(x, fdp(x), type="l", xlab = "x", 
     ylab = "f(x)", xlim = c(0,1), ylim = c(0,1), lwd="2")
text(0.3, .75, expression (f(x) == paste(90*x^8)*(1-x)),
     cex = 1.2)
plot(x, fda(x), type="l", xlab="x", ylab = "F(x)", 
     xlim = c(0,1), ylim = c(0,1), lwd="2") 
text(0.4, 0.75, expression(F(X) == paste(integral(f(y) * dy, -infinity, x), " ", "  ==  " ,
10*x^9 + 9*x^10)), cex = 1.2)


# Testes
x <- c(12, 55, 59, 61, 70, 75, 75, 75, 76, 79,
       82, 85, 88, 90, 94, 95, 100, 100, 100, 100)
length(x)
stem(x, scale=2)
x <- sort(x, decreasing = F)
stripchart(x, method = "stack", frame.plot = F, 
           at=0.01, pch=20, cex=1, las=1)
hist(x, freq = T)

boxplot(x)

length(x[x>=40])
