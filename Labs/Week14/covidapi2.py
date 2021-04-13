import requests
import json
import sendTweet

def getGACovidCases():

    r = requests.get('https://api.covidtracking.com/v1/states/ga/daily.json')
    georgia = r.json()
    message = "Georga COVID Cases \r"
    #Example: 20210307 : 1023487
    for x in range(0,7):
        dailyTotal = str(georgia[x]['date']) + ":" + str(georgia[x]['positive'])
        print(dailyTotal)
        message += dailyTotal + '\r'

    return message

def main():
    tweet = getGACovidCases()
    print(tweet)
    #How could we call our tweet function from another script?
    sendTweet.post(tweet)


if __name__ == "__main__":
    main()