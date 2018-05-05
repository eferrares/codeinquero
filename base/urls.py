"""urlconf for the base application"""

from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^empresas$', views.enterprise_list, name='enterprise_list'),
]
