#/usr/bin/python3
import hashlib,os,fibo

"""
Demonstration use of modules
"""

'''
# Hashlib Example
pw = input("Enter your password: ")

password = hashlib.md5(pw.encode('utf-8'))
hashedPass = password.hexdigest()
print(hashedPass)

pw2 = input("Enter your password2: ")
password2 = hashlib.md5(pw2.encode('utf-8'))
hashedPass2 = password2.hexdigest()

#Compare the password hashes, not the original password string
if(hashedPass == hashedPass2):
    print("Passwords are the same!")
else:
    print("Password incorrect")
'''




# os library example
#print(dir(os))
#print(listdir("/"))
print(os.listdir("/"))

whereami = os.listdir("/")
print(type(whereami))
print(whereami[0:5])


#Fibonacci numbers
print(fibo)
fibo.printFib(1000) 
