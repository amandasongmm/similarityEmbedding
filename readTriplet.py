__author__ = 'amanda'

f = open(r'data/faceTriplet.csv')
tri = f.readlines()
for i in range(0, len(tri)):
    tri[i] = str(i+1) + '' + tri[i]

