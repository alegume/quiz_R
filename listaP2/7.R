t = qnorm(0.05, lower.tail = F)

a = .68+(t^2)/400
b = 0.055
c = 1 + (1.645^2/200)
p = (a + c(-b, b)) / c
round(p, 2)
