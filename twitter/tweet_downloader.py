from pprint import pprint
from birdy.twitter import UserClient
from core.models import Post
from twitter.credentials import CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET


class TweetDownloader(object):
    def __init__(self):
        self.client = UserClient(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)

    def download_tweets(self, hashtag, count=100):
        return self.client.api.search.tweets.get(q=hashtag, count=count).data['statuses']


def execute():
    td = TweetDownloader()
    tweets = td.download_tweets('#codeinquero')

    for tweet in tweets:
        pprint(tweet['user']['screen_name'])
