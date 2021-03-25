# Manually iterate through a iteratable object

# tuple of file permissions
permissions = ("read", "modify", "write")

#Iterator Object
myit = iter(permissions)
print(type(myit))

# Iterate
print(next(myit))
print(next(myit))
print(next(myit))
print(next(myit))
