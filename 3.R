

secant <- function(f,x1,x2,E) {
	pn_1 <- x1
	pn_2 <- x2
	while (abs(f(pn_1)) > E) {
		pn <- pn_1 - (f(pn_1)*(pn_1 - pn_2))/(f(pn_1) - f(pn_2))
		pn_2 <- pn_1
		pn_1 <- pn
	}
	pn_1
}


newton_g <- function(f,x0,E) {
	# derivadas
	df <- function(x) {}
	body(df) <- D(body(f),'x')
	ddf <- function(x) {}
	body(ddf) <- D(body(df),'x')

	x <- x0
	while (abs(f(x)) > E) {
		x <- x - f(x)*df(x)/(ddf(x)^2 - f(x)*ddf(x))
	}
	x
}

f <- function (x) (log(x+2) - sin(x))

print('secant')
x <- secant(f, -1.8, 0, 1e-7)
print(paste('x',x))
print(paste('f(x)',f(x)))
print('newton generalizado')
x <- newton_g(f,-1.8,1e-5)
print(paste('x',x))
print(paste('f(x)',f(x)))