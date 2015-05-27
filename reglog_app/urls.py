from django.conf.urls import patterns, include, url
from django.conf.urls.static import static
from . import settings
from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns(
    '',
    url(r'^$', include('home.urls', namespace='home')),
    url(r'^login/', include('login.urls', namespace='login', app_name='login')),
    url(r'^register/', include('register.urls', namespace='register', app_name='register')),

    url(r'^admin/', include(admin.site.urls)),
)# + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
