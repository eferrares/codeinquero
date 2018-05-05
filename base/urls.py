"""urlconf for the base application"""

from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^empresas$', views.enterprise_list, name='enterprise_list'),
    url(r'^empresas/(?P<slug>\w+)$', views.enterprise_details, name='enterprise_details'),
]
