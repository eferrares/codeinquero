import os
import django

import codeinquero.settings

os.environ.setdefault(
    "DJANGO_SETTINGS_MODULE",
    "codeinquero.settings"
)
django.setup()


from core.models import Enterprise

if __name__ == "__main__":
    print(Enterprise.objects.all())
