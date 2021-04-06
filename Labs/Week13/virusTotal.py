import requests
import json

url = 'https://www.virustotal.com/vtapi/v2/file/scan'


params = {'apikey': '<API-KEY>'}
files = {'file': ('/root/Downloads/trojan.exe', open('/root/Downloads/trojan.exe', 'rb'))}
response = requests.post(url, files=files, params=params)

#Ugly JSON
#print("UGLY JSON:",response.json())

#Print JSON a little prettier :)
print("Pretty JSON:",json.dumps(response.json(), indent=2))
print("Resource ID:",response.json()["resource"])


