# parcial1AnalisisNumerico

## 1 
### a

El algoritmo usado para sumar los elementos de la matriz superior es el siguiente:
'''python
def sum_sup(A):
	cum = 0
	for i in range(len(A)):
		for j in range(i,len(A)):
			cum += A[i][j]
	return cum
'''
