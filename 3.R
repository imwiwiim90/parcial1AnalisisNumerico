

secant <- function(f,x1,x2,E) {
	pn_1 <- x1
	pn_2 <- x2
	while (abs(f(pn_1)) > E) {
		pn <- pn_1 - (f(pn_1)*(pn_1 - pn_2))/(f(pn_1 - f(pn_2)))
		print(f(pn_1))
		print(f(pn_2))
		print(pn)
		print("")
		pn_2 <- pn_1
		pn_1 <- pn
		print(f(pn_1))
		print(f(pn_2))
		print(f(pn))
		print("")
	}
	pn_1
}


secant(function(x) (log(x + 2) - sin(x)), -1.8, -1, 10e-7)