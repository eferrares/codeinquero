from google.cloud import vision
import io
import base64
import requests


def load_image(url):
    return requests.get(url).content


class ExplicitContentDetector(object):
    def __init__(self):
        self.client = vision.ImageAnnotatorClient()

    def detect_explict_content(self, image_uri):
        try:
            base64content = load_image(image_uri)
            image = vision.types.Image(content=base64content)
            result = self.client.safe_search_detection(image).safe_search_annotation

            values = [result.adult, result.spoof, result.medical, result.violence]
            print(values)

            return any(filter(lambda value: value >= 4, values))
        except Exception as e:
            print(e)
            return False


if __name__ == '__main__':
    d = ExplicitContentDetector()
    print(d.detect_explict_content('https://usatmmajunkie.files.wordpress.com/2016/11/magnus-cedenblad-jack-marshman-ufc-fight-night-99-1.jpg?w=1000&h=600&crop=1'))
