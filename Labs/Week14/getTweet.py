#twitter API example
import requests
import json
import re

#Token for auth to twitter
bearer_token = ""

#Can we extend this to take an argument that generalizes the twitter account?
def create_url(twitter_handle):
    query = "from:"+twitter_handle
    tweet_fields = "tweet.fields=author_id"
    url = "https://api.twitter.com/2/tweets/search/recent?query={}&{}".format(
        query, tweet_fields
    )
    #url = "https://api.twitter.com/2/tweets/search/recent?query="+query+"&"+tweet_fields

    return url



def create_headers(bearer_token):
    headers = {"Authorization": "Bearer {}".format(bearer_token)}
    return headers
    
def connect_to_endpoint(url, headers):
    response = requests.request("GET",url, headers=headers)
    print(response.status_code)
    if (response.status_code != 200):
        raise Exception(response.status_code, response.text)
    return response.json()

def displayTweets(json):
    for tweet in json['data']:
        print(tweet['text'])
        print("------------------------")

# Parse out only Hashtags
def displayHashtags(json):
    for tweet in json['data']:
        regex = r"\B#\w*[a-zA-Z]+\w*"
        hashtags = re.findall(regex,tweet['text'])
        print(hashtags)
        print("------------------------")
    

def main():
    #Extend Create URL method to search for user
    url = create_url("UNG_News")

    print(url)
    headers = create_headers(bearer_token)
    json_response = connect_to_endpoint(url, headers)
    print(json.dumps(json_response, indent=4, sort_keys=True))

    #Write a function that only displays tweets
    displayTweets(json_response)
    displayHashtags(json_response)


if __name__ == "__main__":
    main()