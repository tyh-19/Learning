# Machine learning in python

### KNN

+ KNN.py

```python
from numpy import *
import operator

## Input
def createDataSet():
	group = array([[1.0,1.1],[1.0,1.0],[0,0],[0,0.1]])
	labels = ['A','A','B','B']
	return group, labels
## Algorithm
def classify0(inX, dataSet, labels, k):
	dataSetSize = dataSet.shape[0]
	diffMat = tile(inX,(dataSetSize,1))-dataSet
	sqDiffMat = diffMat**2
    sqDistances = sqDiffMat.sum(axis=1)
	distances = sqDistances**0.5
	sortedDistIndicies = distances.argsort()
	classCount={}
	for i in range(k):
		voteIlabel = labels[sortedDistIndicies[i]]
		classCount[voteIlabel] = classCount.get(voteIlabel,0) + 1
	sortedClassCount = sorted(classCount.iteritems(), key=operator.itemgetter(), reverse=True)
	return sortedClassCount[0][0]
```

+ Practice

> change work path

```python
import os
	os.chdir("C:\Users\Tao\Desktop\Machine Learning in python\KNN")
	os.getcwd()
```

> dataset prepare

```python
group,labels = KNN.createDataSet()
## show dataset
>>> group
array([[ 1. ,  1.1],
       [ 1. ,  1. ],
       [ 0. ,  0. ],
       [ 0. ,  0.1]])
>>> labels
['A', 'A', 'B', 'B']
```

> input

```
KNN.classify0([0,0],group,labels,3)
```

> output

```
'B'
```

### Decision tree

+ tree.py
+ Practice



