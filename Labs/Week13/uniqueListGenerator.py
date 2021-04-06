#Unique List Generator

L1Duplicates = ['student1','student2','student3','student2']
print(L1Duplicates)

#Cast the list to a set
#L1Duplicates = set(L1Duplicates)
#print(L1Duplicates)

#What does this do?
#L1Duplicates = list(set(L1Duplicates))
L2Duplicates = set(L1Duplicates)
L2Duplicates = list(L2Duplicates)
L2Duplicates.sort()
print(L2Duplicates)





# List with Duplicates
def makeUnique(listName):
    #YOUR CODE HERE
    uniqueSet = set(listName)
    uniqueSet = list(uniqueSet)
    return  uniqueSet

L1Duplicates = ['student1','student2','student3','student2']
print("Before:",L1Duplicates)

L1Unique = makeUnique(L1Duplicates)
print("After:",L1Unique)


