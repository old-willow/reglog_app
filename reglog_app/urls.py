from django.conf.urls import patterns, include, url
from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^$', include('login.urls', namespace='login', app_name='login')),
    url(r'^register/', include('register.urls', namespace='register', app_name='register')),

    url(r'^admin/', include(admin.site.urls)),
)
