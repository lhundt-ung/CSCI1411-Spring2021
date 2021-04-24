# Wifi Hotspot Mac Addresses found on computer
wifiHotspot = ['00:30:65:03:e8:c6','00:0b:85:23:23:3e']




import requests
import json
from requests.auth import HTTPBasicAuth

apiAuth = (key,token)

#Example API query: https://api.wigle.net/api/v2/network/detail?netid=00%3A11%3A50%3A24%3A68%3A7F

#-H "accept: application/json"
def lookupMac(mac):
    convertedMac = mac.replace(":","%3A")
    r = requests.get("https://api.wigle.net/api/v2/network/detail?netid=" + convertedMac, auth=apiAuth)
    json = r.json()
    print("+ SSID Name: ",json['results'][0]['ssid'])
    print("     -Latitude:",json['results'][0]['trilat'],"Longitude:",json['results'][0]['trilong'])
    print("     -State:",json['results'][0]['region'],"Country:",json['results'][0]['country'])

def main():
    for macAddress in wifiHotspot:
        lookupMac(macAddress)

if __name__ == "__main__":
    main()