import firewall as Firewall
import packet as Packet

# Initialize Firewall object and add some rules
myFirewall = Firewall.Firewall("myFirewall")

myFirewall.addRule("192.168.1.3","192.168.1.2","25","Block")
myFirewall.addRule("192.168.1.5","192.168.1.9","123","Allow")
print(myFirewall.rules)


# Simulate Network traffic
# Why does Packet a not match
a = Packet.Packet("192.168.1.3","192.168.1.2",25)
b = Packet.Packet("192.168.1.3","192.168.1.2","25")

myFirewall.inspectPacket(a)
myFirewall.inspectPacket(b)

#myFirewall.inspectPacket(Packet.Packet("192.168.1.5","192.168.1.10","443"))
