import os
from birdy.twitter import UserClient
from twitter.credentials import CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET
from twitter.tweet_handler import handle_new_tweet


class TweetDownloader(object):
    def __init__(self):
        self.client = UserClient(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)

    def download_tweets(self, hashtag, count=100):
        return self.client.api.search.tweets.get(q=hashtag, count=count).data['statuses']


def execute():
    if 'HASHTAG' not in os.environ:
        print('HASHTAG env var required\nUsage:\nHASHTAG=#codeinquero python script_runner.py twitter/tweet_downloader.py')
        return

    td = TweetDownloader()
    tweets = td.download_tweets(os.environ['HASHTAG'])

    for tweet in tweets:
        handle_new_tweet(tweet)
