ppm <- c(
  9.54, 9.61, 9.32, 9.48, 9.70, 9.26
)

n = length(ppm)
gl = n -1
s2 = var(ppm)
mean(ppm)
round(var(ppm),2)
alpha = 0.1

q2_1 = qchisq(alpha/2, df = gl, lower.tail = F)
q2_2 = qchisq(1-(alpha/2), df = gl, lower.tail = F)
round(q2_2, 2)
round(gl*s2/(c(q2_1, q2_2)),2)

(5*0.03)/1.15

