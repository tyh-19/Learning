#!/usr/bin/python
# -*- coding: UTF-8 -*-
import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
from mpl_toolkits.mplot3d import Axes3D

# using fraction after average length data 
# data = np.loadtxt("tyh_method_length_for_py.txt")

# using fraction then average length data
data = np.loadtxt("fraction_then_average.txt")

#print data.T

x = data.T[0]
NEB_small = data.T[1]
NEB_small_PNK = data.T[2]
SMART_small = data.T[3]
SMART_small_PNK = data.T[4]
SMART_total = data.T[5]


#print x,SMART_total

#2D
#plt.plot(x, NEB_small, label = 'NEB_small')
#plt.plot(x, NEB_small_PNK, label = 'NEB_small_PNK')
#plt.plot(x, SMART_small, label = 'SMART_small')
#plt.plot(x, SMART_small_PNK, label = 'SMART_small_PNK')
#plt.plot(x, SMART_total, label = 'SMART_total')
#plt.legend()
#plt.xlabel('Length')
#plt.ylabel('Fraction')
#plt.rcParams['font.sans-serif']=['Arial']
#plt.rcParams['font.sans-serif']=['Microsoft Yahei']

#3D
fig = plt.figure()
ax = fig.gca(projection='3d')
theta = np.linspace(-4 * np.pi, 4 * np.pi, 100)

y1 = [0]*151
y2 = [1]*151
y3 = [2]*151
y4 = [3]*151
y5 = [4]*151

ax.plot(x, y5, SMART_total, label='SMART total')
ax.plot(x, y4, SMART_small_PNK, label='SMART small PNK')
ax.plot(x, y3, SMART_small, label='SMART small')
ax.plot(x, y2, NEB_small_PNK, label='NEB small PNK')
ax.plot(x, y1, NEB_small, label='NEB small')

#ax.legend()
font = {'family' : 'Arial',
'weight' : 'bold',
'size' : 14,
}

ax.set_xlabel('Read Length',font)
ax.set_zlabel('Fraction',font)

ax.set_xticklabels([0,20,40,60,80,100,120,140],{'verticalalignment': 'baseline','horizontalalignment': 'right'})
ax.set_yticklabels(['NEB-small','NEB-small-PNK','SMART-small','SMART-small-PNK','SMART-total'],{'verticalalignment': 'baseline','horizontalalignment': "left"})
#ax.set_yticklabels(['','','','',''],{'verticalalignment': 'baseline','horizontalalignment': "left"})
ax.set_yticks([0,1,2,3,4])
#ax.set_xticklabels(['','','','','','','',''],{'verticalalignment': 'baseline','horizontalalignment': "left"})
#ax.set_zticklabels(['','','','','',''],{'verticalalignment': 'baseline','horizontalalignment': "left"})
plt.rcParams['font.sans-serif']=['Arial']
ax.w_xaxis.set_pane_color((1.0, 1.0, 1.0, 1.0))
ax.w_yaxis.set_pane_color((1.0, 1.0, 1.0, 1.0))
ax.w_zaxis.set_pane_color((1.0, 1.0, 1.0, 1.0))
plt.show()
#plt.savefig("temp.png",dpi=500,bbox_inches = 'tight')