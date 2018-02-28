import time


class StopWatch():
	def __init__(self):
		self.start_time = 0
	def reset():
		self.start_time = time.time()
	def time():
		return time.time() - start_time


class SumCounter():
	def __init__(self):
		self.counter = 0
	def reset(self):
		self.counter = 0
	def sum(self,a,b):
		self.counter += 1
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
			cum += A[i][j]
	return cum

print sum_sup(A)