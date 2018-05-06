from django.conf.urls import url

from . import consumers

websocket_urlpatterns = [
    url(r'^ws/empresas/obs/(?P<room_name>[^/]+)/$', consumers.EnterpriseConsumer),
]
