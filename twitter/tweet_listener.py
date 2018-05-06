from birdy.twitter import StreamClient
from twitter.credentials import CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET
from twitter.tweet_handler import handle_new_tweet


def execute():
    client = StreamClient(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
    resource = client.stream.statuses.filter.post(track='#minhatagdeteste,#twitter')

    for tweet in resource.stream():
        handle_new_tweet(tweet)
