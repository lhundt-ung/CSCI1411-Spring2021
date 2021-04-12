#Send Tweet
import requests
import json
# Use of tweepy module (Twitter API Wrapper) to post a tweet!
# pip3 install tweepy
import tweepy


def post(message):
    auth = tweepy.OAuthHandler('qzE5AjmT7LybYRmKAiLKW4onq', '77GKy01IRUmn5hFrQNsOeJ1SUdgftC3hOVdqOxdqiQG3E4rH8T')
    auth.set_access_token('1378840120195960832-723BD3N6Xeix8KoprkDEdnp9a9fAXh','eLAcI3pmhCMzE6FLkXLpQiadBGArND54fiz8CenNS9LGw')
    twitter = tweepy.API(auth)
    twitter.update_status(message)

def main():
    post("Hello World!")

if __name__ == "__main__":
    main()