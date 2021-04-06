import shodan
import sys
import requests
import json
#Use Shodan's Python module for easy access vs requests module

SHODAN_API_KEY = "<API KEY>"
api = shodan.Shodan(SHODAN_API_KEY)

#url = "https://api.shodan.io/shodan/host/search?key="+SHODAN_API_KEY+"&query="+"WebCam"

#r = requests.get(url)
#print(json.dumps(r.json(), indent=2))
results = api.search('ung.edu')
print(results['matches'][0])


findings = []

def searchShodan(apiKey,query):
    api = shodan.Shodan(SHODAN_API_KEY)
    results = api.search("query")
    for result in results['matches']:
            print("Location: ",result['location']['country_name'])
            finding = {"IP":result['ip_str'],"Location":result['location']['country_name']}
            findings.append(finding)

            #print(result['data'])

    for finding in findings:
            print("-------")
            for key, value in finding.items():
                    print("+",key,":", value)

    print(type(results)) # Returns a dictionary
    print('Total Results found: {}'.format(results['total']))

# Search Shodan
searchShodan(SHODAN_API_KEY,'WebCam')

