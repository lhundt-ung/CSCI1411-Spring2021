#Insert API Key provided by Instructor
key="Cw3IsowP04aitvHHLLFkPc1ZvezvKh9LKjX_FwzTT0M"


import requests

ip = "40.76.71.232"
r = requests.get('https://atlas.microsoft.com/geolocation/ip/json?subscription-key=' + key + '&api-version=1.0&ip=' + ip)

country = r.json()
#print(country)
#print(country['countryRegion']['isoCode'])

response = requests.get("http://api.open-notify.org/astros.json")
#print(response.json()['people'])

peopleList = response.json()['people']

for person in peopleList:
    print(person['name'])

