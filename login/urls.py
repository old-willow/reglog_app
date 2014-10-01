from django.conf.urls import patterns, include, url
from reglog.login.forms import PasswordResetForm, ChangePasswordForm

urlpatterns = patterns('',
    url(r'^$', 'login.views.process_login', name='index'),
    #(r'^login-form/$', 'login.views.process_login'),
    (r'^loged-in/$', 'login.views.loged_in', name='logedin'),
    (r'^portrait-look/$', 'login.views.show_portrait', name='portrait'),
    (r'^loged-out/$', 'login.views.loged_out', name='logedout'),
    (r'^logout-site/$', 'login.views.process_logout', name='logout-site'),
    (r'^login-error/$', 'login.views.error_login', name='login-error'),
    #(r'^password-successfully-changed/$', 'login.views.password_changed'),
    #(r'^request-sent/$', 'login.views.request_new_password_sent'),

    # For resetting a password (user has lost his password).
    (r'^password/reset/$', 'django.contrib.auth.views.password_reset',
        {'template_name': 'login/password_reset_form.html',
          'password_reset_form': PasswordResetForm }),

    #(r'^forgot-password/$', 'reglog.login.views.forgot_password'),
    (r'^password/reset/done/$', 'django.contrib.auth.views.password_reset_done',
        {'template_name': 'login/password_reset_done.html'}),

    (r'^reset/(?P<uidb36>[0-9A-Za-z]{1,13})-(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',
        'django.contrib.auth.views.password_reset_confirm',
        {'template_name': 'login/password_reset_confirm.html',
         'set_password_form': ChangePasswordForm }),

    (r'^password/reset/complete/$', 'django.contrib.auth.views.password_reset_complete',
        {'template_name': 'login/password_reset_complete.html'}),
    #(r'^password-successfully-changed/$', 'reglog.login.views.requested_new_password_email_sent'),
)
