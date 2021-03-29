import requests
from datetime import *

# COVID API: https://covid-api.com/api/
today = datetime.today().strftime('%Y-%m-%d')

# API Example -> Regions
r = requests.get('https://covid-api.com/api/regions')
country = r.json()
#print(country)

# API Example -> Provinces
r = requests.get('https://covid-api.com/api/provinces/USA')
country = r.json()
#print(country)


# Georgia Confirmed cases by county
r = requests.get('https://covid-api.com/api/reports?date='+'2020-04-07'+'&iso=USA&region_province=Georgia')
counties = r.json()
#for county in counties['data'][0]['region']['cities']:
#    print("|County:",str(county['name']), "| Confirmed Cases:",str(county["confirmed"]),"|")



# Get total Georgia Confirmed cases in time span
# Used daterange code from https://stackoverflow.com/questions/1060279/iterating-through-a-range-of-dates-in-python
def daterange(start_date, end_date):
    for n in range(int ((end_date - start_date).days)):
        yield start_date + timedelta(n)

start_date = date(2020, 4, 1)
end_date = date(2020, 4, 8)
for single_date in daterange(start_date, end_date):
    single_date = single_date.strftime("%Y-%m-%d")
    r = requests.get('https://covid-api.com/api/reports?date='+single_date+'&iso=USA&region_province=Georgia')
    georgia = r.json()
    print(single_date," - Confirmed Cases:",georgia['data'][0]['confirmed'])
