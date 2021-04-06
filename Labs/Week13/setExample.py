#Set Syntax and Properties
#Notice anything interesting?
setExample = {'Monday','Tuesday','Wednesday','Monday','Monday'}
L1 = ['Monday','Tuesday','Wednesday','Monday','Monday']
print(setExample)
print(L1)
print(L1[0])
#print(setExample[0])




#Add object to set
setExample.add("Friday")
print(setExample)



#Add object to set
#Will we see two Mondays, one Monday or Error?
setExample.add("Monday")
print(setExample)



#Remove object
setExample.remove("Monday")
print(setExample)


s1 = set({})
d1 = {}

print(type(s1))
print(type(d1))




