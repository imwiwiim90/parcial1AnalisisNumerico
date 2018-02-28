

suc_taylor_n <- function(x,n,Pn_1) {
	y <- x^n/factorial(n) + Pn_1
	if (n == 0) y <- x
	y
}

suc_atiken_n <- function(P_2n,P_1n,P_n) {
	P_n - (P_1n - P_n)^2/(P_2n - 2*P_1n + P_n)
}


atiken_n <- function(n,x) {
	P_n <- suc_taylor_n(x,0,0)
	P_1n <- suc_taylor_n(x,1,P_n)
	P_2n <- suc_taylor_n(x,2,P_1n)
	taylor_k <- 3
	atiken_k <- 0

	while (atiken_k < n) {
		At <- suc_atiken_n(P_2n,P_1n,P_n)

		# polinomios taylor grado n
		P_n <- P_1n 
		P_1n <- P_2n
		P_2n <-suc_taylor_n(x,taylor_k,P_2n)

		# contadores
		taylor_k <- taylor_k + 1
		atiken_k <- atiken_k + 1

		# convergencia
		print(paste('atiken(',atiken_k,') ',At))
	}
}


atiken_n(10,1)