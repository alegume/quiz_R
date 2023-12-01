x1 = 2.48
x2 = 1.83
n1 = 44
n2 = 42
s1 = .76
s2 = .82

gl = n1 + n2 - 2
gl
alpha = 0.1

t = qt(alpha/2, df = gl, lower.tail = F)
t

s2_p = ( (n1 - 1)*s1 + (n2 - 1)*s2 ) / (n1 + n2 - 2) 
s2_p

LI = (x1 - x2) - t * sqrt(s2_p * (1/n1 + 1/n2))
LS = (x1 - x2) + t * sqrt(s2_p * (1/n1 + 1/n2))

cat(LI, LS)

round((x1 - x2) - 1.66 * sqrt(.79 * (1/n1 + 1/n2)), 2)
round((x1 - x2) + 1.66 * sqrt(.79 * (1/n1 + 1/n2)), 2)
