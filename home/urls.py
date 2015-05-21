from django.conf.urls import patterns, include, url

from home.views import home_page

urlpatterns = patterns(
    '',
    url(r'^$', home_page, name='index'),
)
