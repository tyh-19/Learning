# !/bin/python
# -*- coding: utf-8 -*-

import numpy as np
import pandas as pd
from statsmodels.stats.proportion import proportions_ztest
from sys import argv
script, filename = argv
i = 1
df = pd.read_csv(filename,header=0)
output = open("pvalue.txt",'w')
output.write(filename+"p_2proportion\n")
output.close()
for i in range(len(df)):
	count = np.array([df.loc[i,'Positive.in,Smokers'],df.loc[i,'Positive.in.Never']])
	nobs = np.array([df.loc[i,'Total.Smokers'],df.loc[i,'Total.Never']])
	stat, pval = proportions_ztest(count, nobs)
	output = open("pvalue.txt",'a')
	output.write(str(pval)+"\n")
	output.close()

 
