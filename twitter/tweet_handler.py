from datetime import datetime
from core.models import Enterprise, Post
from twitter.post_classifier import PostClassifier, APPROVED


classifier = PostClassifier()


def prepare_post_data(tweet, enterprise):
    classification = classifier.classify(tweet['text'])
    print('Tweet {} classified with label {} text {}'.format(tweet['id'], classification, tweet['text']))

    if 'media' in tweet['entities']:
        media_file = tweet['entities']['media'][0]['media_url_https']
    else:
        media_file = None

    return {
        'enterprise': enterprise,
        'username': tweet['user']['screen_name'],
        'username': tweet['user']['screen_name'],
        'user_display_name': tweet['user']['name'],
        'text': tweet['text'],
        'date_posted': datetime.strptime(tweet['created_at'], '%a %b %d %H:%M:%S %z %Y'),
        'file': media_file,
        'external_id': tweet['id'],
        'moderated': classification != APPROVED
    }


def get_enterprise(tweet):
    hashtags = tweet['entities']['hashtags']
    for hashtag in hashtags:
        actual_hashtag = ('#' + hashtag['text']).lower()
        enterprise = Enterprise.objects.filter(hashtag=actual_hashtag)
        if enterprise:
            return enterprise[0]
    return None


def is_tweet_valid(tweet):
    if Post.objects.filter(external_id=tweet['id']).exists():
        print('Tweet already processed {}'.format(tweet['id']))
        return False

    return True


def handle_new_tweet(tweet):
    print('New tweet {}'.format(tweet['id']))

    try:
        if is_tweet_valid(tweet):
            enterprise = get_enterprise(tweet)
            if enterprise:
                post_data = prepare_post_data(tweet, enterprise)
                post = Post.objects.create(**post_data)
                print('New post created from tweet {}'.format(post))
            else:
                print(tweet['entities'])
                print(tweet['text'])
    except Exception as e:
        print('Tweet not saved', e)
