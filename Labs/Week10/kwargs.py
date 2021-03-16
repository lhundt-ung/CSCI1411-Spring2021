# kwargs Examples 
def print_kwargs(**kwargs):
    print(kwargs)

#Empty Dictionary
print_kwargs()

#print_kwargs("test")


def print_values(**exampleDictionary):
    for key, value in exampleDictionary.items():
        print("{} {} is in CS1411".format(key, value))

print_values(Student="Sammy")
print_values(Student="Sammy",Lastname="Spring")
