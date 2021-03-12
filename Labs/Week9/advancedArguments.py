# args examples
def multiply(*args):
    z = 1
    for num in args:
        z *= num
    print(z)

multiply(4, 5)
multiply(10, 9)
multiply(2, 3, 4)
multiply(3, 5, 10, 6)




'''
# kwargs Examples
def print_kwargs(**kwargs):
    print(kwargs)

print_kwargs()



def print_values(**kwargs):
    for key, value in kwargs.items():
        print("{} {} is in CS1411".format(key, value))

print_values(Student="Sammy")'''