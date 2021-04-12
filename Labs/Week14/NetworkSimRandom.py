import firewall as Firewall
import packet as Packet
import random

# Initialize Firewall object with some global variables
myFirewall = Firewall.Firewall("myFirewall")
commonPorts = ["25","80","443","3389","22"]
allowed = 0
blocked = 0

#Generate 100 random Firewall Rules
for i in range(0,100):
    src = "192.168.2." + str(random.randrange(1,10))
    dst = "192.168.1." + str(random.randrange(1,10))
    port = random.choices(commonPorts)
    block = random.randrange(0,2)
    if block == 0:
        block = "Allow"
    else:
        block = "Block"
    
    myFirewall.addRule(src,dst,port[0],block)

print(myFirewall.rules)


# Simulate 1000 Network traffic packets sent through Firewall
for i in range(0,10000):
    # Generate random IP addresses between 192.168.1.1-9 and 192.168.2.1-9
    src = "192.168.2." + str(random.randrange(1,10))
    dst = "192.168.1." + str(random.randrange(1,10))

    # Grab a random value in the commonPorts list
    port = random.choices(commonPorts)
    pkt = Packet.Packet(src,dst,port[0])
    result = myFirewall.inspectPacket(pkt)
    if result == "Allow":
        allowed+=1
    else:
        blocked+=1

print("Total Allowed: ",allowed)
print("Total Blocked: ",blocked)


#myFirewall.inspectPacket(a)
#myFirewall.inspectPacket(b)

#myFirewall.inspectPacket(Packet.Packet("192.168.1.5","192.168.1.10","443"))
