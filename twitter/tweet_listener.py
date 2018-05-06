from birdy.twitter import StreamClient
from twitter.credentials import CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET
from twitter.tweet_handler import handle_new_tweet
from core.models import Enterprise


def execute():
    client = StreamClient(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
    hashtags = ','.join(Enterprise.objects.values_list('hashtag', flat=True))
    print('hashtags: ' + hashtags)
    resource = client.stream.statuses.filter.post(track=hashtags, language='en,pt')

    for tweet in resource.stream():
        handle_new_tweet(tweet)
