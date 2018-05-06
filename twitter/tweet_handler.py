from datetime import datetime
from core.models import Enterprise, Post
from twitter.post_classifier import PostClassifier, APPROVED
from twitter.explict_content_detector import ExplicitContentDetector


classifier = PostClassifier()
detector = ExplicitContentDetector()


def prepare_post_data(tweet, enterprise):
    classification = classifier.classify(tweet['text'])
    print(classification)
    moderate = classification != APPROVED


    if 'media' in tweet['entities']:
        media_file = tweet['entities']['media'][0]['media_url_https']
        explicit_content_detected = detector.detect_explict_content(media_file)
        moderate = moderate or explicit_content_detected
    else:
        media_file = None

    print('Tweet {} moderate {} text {}'.format(tweet['id'], moderate, tweet['text']))

    return {
        'enterprise': enterprise,
        'username': tweet['user']['screen_name'],
        'username': tweet['user']['screen_name'],
        'user_display_name': tweet['user']['name'],
        'text': tweet['text'],
        'date_posted': datetime.strptime(tweet['created_at'], '%a %b %d %H:%M:%S %z %Y'),
        'file': media_file,
        'external_id': tweet['id'],
        'moderated': moderate
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
