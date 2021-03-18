#!/usr/bin/python3
 
try:
    file = open("test6.txt","x")
    file.write("Hello")
    file.close()
except:
    print("Caution, the file already exists, try a different filename. Thank you!")
else:
    print("File contents created successfully")




