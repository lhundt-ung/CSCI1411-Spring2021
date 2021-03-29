import json

# some JSON:
jsonFile = '''{ 
            "name":"John", 
            "age":30, 
            "city":"New York",
            "cars": {
                "car1":"Ford",
                "car2":"BMW",
                "car3":"Fiat"
                }
            }'''

# parse jsonFile:
jsonDictionary = json.loads(jsonFile)

# the result is a Python dictionary:
print(type(jsonDictionary))

#print(jsonDictionary['cars']['car2'])

for car in jsonDictionary['cars']:
    print(jsonDictionary['cars'][car])