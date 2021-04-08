from Endpoint import Endpoint

# Create objects
desktop1 = Endpoint("MyPC","192.168.1.101")
desktop2 = Endpoint("MomsLaptop","192.168.1.102")
fridge = Endpoint("Samsung","192.168.1.103")

print(fridge.name)


# Store objects in List, print the list. Also try set and Dict
# Notice anything Strange
homeNetwork = [desktop1,desktop2,fridge]
homeNetworkSet = (desktop1,desktop2,fridge)
homeNetworkDict = {"desktop1":desktop1,"desktop2":desktop2,"fridge":fridge}
print(homeNetwork)
print(homeNetworkSet)
print(homeNetworkDict)




#How would one add open ports to the second object stored in homeNetwork list? port numbers 
# 25,80
homeNetwork[1].ports_open = [25,80]
print(homeNetwork[1].ports_open)


#Iterate through homeNetwork assign property os to Windows 10
for device in homeNetwork:
    device.os = "Windows 10"
    print(device.name + " : " + device.os)



#Iterate through homeNetwork and print endpoint's name and ports open
# Example --> Name: MomsPC, Ports Open: [80,443] 
for device in homeNetwork:
    print(device.name + " : ", device.ports_open)


