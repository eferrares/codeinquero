"""Demonstrates how to make a simple call to the Natural Language API."""

from google.cloud import language
from google.cloud.language import enums
from google.cloud.language import types

APPROVED = 'approved'
MODERATED = 'moderated'
REJECTED = 'rejected'

class PostClassifier(object):

    def __init__(self):
        self.client = language.LanguageServiceClient()

    def classify(self, text):
        document = self.prepare_document(text)
        return self.analyze_document(document)

    def prepare_document(self, text):
        return types.Document(
            content=text,
            type=enums.Document.Type.PLAIN_TEXT,
            language='pt')

    def analyze_document(self, document):
        annotations = self.client.analyze_sentiment(document=document)
        score = annotations.document_sentiment.score

        if score >= 0.5:
            return APPROVED
        if score >= 0:
            return MODERATED
        return REJECTED


if __name__ == '__main__':
    text = """
 liberdade de horários, bônus por avaliação, pequenos benefícios como: sala de jogos, espaço para descanso, yoga, aulas de inglês, terça da pizza, comida, etc
    """
    c = PostClassifier()
    print(c.classify(text))
