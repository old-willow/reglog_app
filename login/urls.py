from django.conf.urls.defaults import *
from reglog.login.forms import PasswordResetForm, ChangePasswordForm

urlpatterns = patterns('',
    (r'^login-form/$', 'reglog.login.views.process_login'),
    (r'^loged-in/$', 'reglog.login.views.loged_in'),
    (r'^portrait-look/$', 'reglog.login.views.show_portrait'),
    (r'^loged-out/$', 'reglog.login.views.loged_out'),
    (r'^logout-site/$', 'reglog.login.views.process_logout'),
    (r'^login-error/$', 'reglog.login.views.error_login'),
    #(r'^password-successfully-changed/$', 'reglog.login.views.password_changed'),
    #(r'^request-sent/$', 'reglog.login.views.request_new_password_sent'),

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
