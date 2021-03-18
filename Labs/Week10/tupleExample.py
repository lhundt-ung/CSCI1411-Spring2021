#!/usr/bin/python3

# Tuples
T1 = ()
T1 = ('January','February','March','April','May','June', \
'July','August','September','October','November')
print(T1)
#T1.append('December')




L1 = [1,"two",T1]

L1.append(10)
#print("Line 10:",L1)

D1 = {"Months":T1}
#print(D1)
#print(D1['Months'][0:][0:3][2])


# Why use Tuples?
# Answer. Speed!
python -mtimeit "['January','February','March','April','May','June', \
'July','August','September','October','November']"
python -mtimeit "('January','February','March','April','May','June', \
'July','August','September','October','November')"