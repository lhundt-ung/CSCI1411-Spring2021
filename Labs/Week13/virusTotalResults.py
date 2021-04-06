import requests
import json

apiKey = '<API KEY>'
resource = '<Resource ID>'
url = 'https://www.virustotal.com/vtapi/v2/file/report'

#GET Some data
params = {'apikey': apiKey,'resource':resource}

response = requests.get(url, params=params)
results = response.json()
print(results)
print(json.dumps(response.json(), indent=2))

#print("Object Type:",type(results))
#print(results['scans'])
#print("Object Type:",type(results['scans']))


for key,value in results['scans'].items():
    print("AV Name:",key,"Detected:",value["detected"])
