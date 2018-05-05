# codeinquero

## Instalação

- Instale o virtualenvwrapper (http://virtualenvwrapper.readthedocs.io/en/latest/)
- Crie um virtualenv para o projeto ($ mkvirtualenv codeinquero --python=`which python3`)
- $ cd codeinquero
- $ pip install -r requirements/local.txt
- $ cp codeinquero/settings/local-dist.py codeinquero/settings/local.py
- Criar database com nome `codeinquero`
- $ python manage.py migrate
- $ python manage.py runserver
