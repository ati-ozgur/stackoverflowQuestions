
line =  "PRO CCC 4629.00"
row = line.split()
f = float(row[2])
myDict = {row[0]:{row[1]:f}}
print(myDict)
    
    