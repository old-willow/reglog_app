from django.conf.urls.defaults import *

urlpatterns = patterns('',
    (r'register-form/$', 'register.views.process_register', name='register-form'),
    (r'thanks-for-registering/$', 'register.views.registered_successfully', name='thanks'),
)
