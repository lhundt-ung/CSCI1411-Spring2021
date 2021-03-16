#!/usr/bin/python3
# Write a function that prints a list and length
def printItemList(listInput):
    print(listInput)
    print(len(listInput))
    #print(listInput.count('a'))


# Lists
listexample = []
listexample.append('apple')
listexample.append('a')
listexample.append(2)
listexample.append("metasploit")
#use new print function here 
#printItemList(listexample)


# ?
listexample[2] = listexample[2]+10
printItemList(listexample)


listexample.append(12)
listexample.append(12)
listexample.remove('metasploit')
listexample.remove(12)
printItemList(listexample)


listexample.append(8.0)
print(listexample)

for item in listexample:
    print(item)
