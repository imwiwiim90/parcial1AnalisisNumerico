import time


class StopWatch():
	start_time = 0
	@staticmethod
	def reset():
		StopWatch.start_time = time.time()
	@staticmethod
	def time():
		return time.time() - StopWatch.start_time


class SumCounter():
	counter = 0
	@staticmethod
	def reset():
		SumCounter.counter = 0
	@staticmethod
	def sum(a,b):
		SumCounter.counter += 1
		return a + b

n = 4
A = [[1 for j in range(n)] for i in range(n)]


# funcion:
# recibe una matriz cuadrada
# devuelve la suma de los elementos en la triangular superior
def sum_sup(A):
	cum = 0
	for i in range(len(A)):
		for j in range(i,len(A)):
			cum = SumCounter.sum(A[i][j],cum)
	return cum


n = 4
A = [[1 for j in range(n)] for i in range(n)]
SumCounter.reset()
StopWatch.reset()
sum_sup(A)
print "n {0} , t {1}, op {2}".format(n,StopWatch.time(),SumCounter.counter)

n = 5
A = [[1 for j in range(n)] for i in range(n)]
SumCounter.reset()
StopWatch.reset()
sum_sup(A)
print "n {0} , t {1}, op {2}".format(n,StopWatch.time(),SumCounter.counter)


n = 10
A = [[1 for j in range(n)] for i in range(n)]
SumCounter.reset()
StopWatch.reset()
sum_sup(A)
print "n {0} , t {1}, op {2}".format(n,StopWatch.time(),SumCounter.counter)


n = 20
A = [[1 for j in range(n)] for i in range(n)]
SumCounter.reset()
StopWatch.reset()
sum_sup(A)
print "n {0} , t {1}, op {2}".format(n,StopWatch.time(),SumCounter.counter)


n = 100
A = [[1 for j in range(n)] for i in range(n)]
SumCounter.reset()
StopWatch.reset()
sum_sup(A)
print "n {0} , t {1}, op {2}".format(n,StopWatch.time(),SumCounter.counter)