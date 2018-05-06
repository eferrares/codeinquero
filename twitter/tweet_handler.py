from datetime import datetime
from core.models import Enterprise, Post


def prepare_post_data(tweet, enterprise):
    return {
        'enterprise': enterprise,
        'username': tweet['user']['screen_name'],
        'username': tweet['user']['screen_name'],
        'user_display_name': tweet['user']['name'],
        'text': tweet['text'],
        'date_posted': datetime.strptime(tweet['created_at'], '%a %b %d %H:%M:%S %z %Y'),
        'file': tweet['entities']['media'][0]['media_url_https'],
        'external_id': tweet['id']
    }


def get_enterprise(tweet):
    hashtags = tweet['entities']['hashtags']
    for hashtag in hashtags:
        enterprise = Enterprise.objects.filter(hashtag=hashtag['text'].lower())
        if enterprise:
            return enterprise[0]
    return None


def is_tweet_valid(tweet):
    if 'media' not in tweet['entities']:
        print('Tweet without media file {}'.format(tweet['id']))
        return False

    if Post.objects.filter(external_id = tweet['id']).exists():
        print('Tweet already processed {}'.format(tweet['id']))
        return False

    return True


def handle_new_tweet(tweet):
    try:
        if is_tweet_valid(tweet):
            enterprise = get_enterprise(tweet)
            if enterprise:
                post_data = prepare_post_data(tweet, enterprise)
                post = Post.objects.create(**post_data)
                print('New post created from tweet {}'.format(post))
    except Exception as e:
        print('Tweet not saved', e)
