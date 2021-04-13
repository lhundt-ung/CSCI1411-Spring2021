#Send Tweet
import requests
import json
# Use of tweepy module (Twitter API Wrapper) to post a tweet!
# pip3 install tweepy
import tweepy


def post(message):
    auth = tweepy.OAuthHandler('', '')
    auth.set_access_token('','')
    twitter = tweepy.API(auth)
    twitter.update_status(message)

def main():
    post("Hello World!")

if __name__ == "__main__":
    main()