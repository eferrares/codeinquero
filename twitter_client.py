import os
import django
import codeinquero.settings
import json
import requests
from pprint import pprint
from birdy.twitter import UserClient, StreamClient
from datetime import datetime

os.environ.setdefault(
    "DJANGO_SETTINGS_MODULE",
    "codeinquero.settings"
)
django.setup()

from core.models import Enterprise, Post


CONSUMER_KEY = 'q8hG77NeTRXu4ldDyZb8kjw4S'
CONSUMER_SECRET = 'S2BWDszLS8xYS5wjEjszXfJK2YAvAit5c8oaU98crmgC0oLKaw'
ACCESS_TOKEN = '2336534364-uUugWXsNZDuzcuBbdIi4Ey43ZM4nwpoVFSdT8ZA'
ACCESS_TOKEN_SECRET = 'Mj3tQlCkDWYTqfTZGj1bzGygkdpBE3HjuhQcBmLG7mMUU'


def prepare_post_data(tweet):
    return {
        'username': tweet['user']['screen_name'],
        'user_display_name': tweet['user']['name'],
        'text': tweet['text'],
        'date_posted': datetime.strptime(tweet['created_at'], '%a %b %d %H:%M:%S %z %Y'),
        'file': tweet['entities']['media'][0]['media_url_https']
    }


def is_tweet_valid(tweet):
    return True or 'media' in tweet['entities']


def handle_new_tweet(tweet):
    if is_tweet_valid(tweet):
        post_data = prepare_post_data(tweet)

        post = Post.objects.create(**post_data)
        print('New post created from tweet {}'.format(post))
    else:
        print('Tweet {} without media file'.format(tweet['id']))


def start():
    client = StreamClient(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
    resource = client.stream.statuses.filter.post(track='#minhatagdeteste')

    for tweet in resource.stream():
        try:
            handle_new_tweet(tweet)
        except Exception as e:
            print('Error while processing tweet {}'.format(tweet['id']))
            print(e)


if __name__ == "__main__":
    start()
