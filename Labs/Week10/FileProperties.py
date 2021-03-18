import os 


file = open("logo.png")
print(type(file))

st = os.stat("logo.png")
print(st)
