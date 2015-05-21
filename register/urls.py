from django.conf.urls import patterns, include, url

urlpatterns = patterns('',
    url(r'register-form/$', 'register.views.process_register', name='index'),
    url(r'thanks-for-registering/$', 'register.views.registered_successfully', name='thanks'),
)
