import os, sys
import django
import codeinquero.settings
from importlib.machinery import SourceFileLoader

os.environ.setdefault(
    "DJANGO_SETTINGS_MODULE",
    "codeinquero.settings"
)
django.setup()


if __name__ == '__main__':
    script = SourceFileLoader('script', sys.argv[1]).load_module()
    script.execute()
