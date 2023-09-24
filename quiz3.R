# Exercício 3
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

