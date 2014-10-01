from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
    # Examples:
    #url(r'^$', 'login.views.process_login', name='home'),
    url(r'^$', include('login.urls'), namespace='home-login'),
    url(r'^register/$', include('login.urls'), namespace='register'),

    url(r'^admin/', include(admin.site.urls)),
)
