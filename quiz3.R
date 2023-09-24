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

     