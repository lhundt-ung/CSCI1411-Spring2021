import requests

r = requests.get('https://api.covidtracking.com/v1/states/ga/daily.json')
#print(r)
georgia = r.json()
#print(georgia[0])

#Example: 20210307 : 1023487
for x in range(0,7):
    print(georgia[x]['date'],":",georgia[x]['positive'])

