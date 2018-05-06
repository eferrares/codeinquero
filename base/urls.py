"""urlconf for the base application"""

from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^empresas/(?P<slug>\w+)$', views.enterprise_details, name='enterprise_details'),
    url(r'^empresas/(?P<slug>\w+)/new_posts$', views.enterprise_new_posts, name='enterprise_new_posts'),
]
