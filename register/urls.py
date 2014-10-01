from django.conf.urls.defaults import *

urlpatterns = patterns('',
    (r'^register-form/$', 'reglog.register.views.process_register'),
    (r'^thanks-for-registering/$', 'reglog.register.views.registered_successfully'),
)
