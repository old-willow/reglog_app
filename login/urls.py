from django.conf.urls import patterns, url
#from login.forms import PasswordResetForm, ChangePasswordForm
from login.forms import ChangePasswordForm

urlpatterns = patterns(
    '',
    url(r'^$', 'login.views.process_login', name='index'),

    url(r'dummy-ajax/$',
        'login.views.dummy_ajax',
        name='dummy-ajax'),

    url(r'check-username/$',
        #'login.views.dummy_ajax',
        'login.views.ajax_login_username_check',
        name='ajax-usercheck'),  # AJAX
    #(r'^login-form/$', 'login.views.process_login'),
    #(r'^loged-in/$', 'login.views.loged_in', name='logedin'),
    #(r'^portrait-look/$', 'login.views.show_portrait', name='portrait'),
    #(r'^loged-out/$', 'login.views.loged_out', name='logedout'),
    #(r'^logout-site/$', 'login.views.process_logout', name='logout-site'),
    url(r'^login-error/$', 'login.views.error_login', name='login-error'),
    #(r'^password-successfully-changed/$', 'login.views.password_changed'),

    # For resetting a password (user has lost his password).
    # view: password_reset

    url(r'password_reset/$',
        'login.views.password_reset',
        #'django.contrib.auth.views.password_reset',
        #{'template_name': 'login/password_reset_form.html',
        # 'post_reset_redirect': 'login:password_reset_done',
        # 'password_reset_form': PasswordResetForm },
        name='password_reset'),

    url(r'password_reset/done/$',
        'login.views.password_reset_done',
        #'django.contrib.auth.views.password_reset_done',
        #{'template_name': 'login/password_reset_done.html'},
        name='password_reset_done'),

    # view: password_reset_confirm
    url(r'^reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',
        'django.contrib.auth.views.password_reset_confirm',
        # 'template_name': 'login/password_reset_confirm.html',
        {'post_reset_redirect': 'login:password_reset_complete',
         'set_password_form': ChangePasswordForm},
        name='password_reset_confirm'),

    # Original
    #url(r'^reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',
    #    'django.contrib.auth.views.password_reset_confirm',
    #    name='password_reset_confirm'),

    # view: password_reset_complete
    url(r'^password/reset/complete/$',
        'django.contrib.auth.views.password_reset_complete',
        {'template_name': 'login/password_reset_complete.html'},
        name='password_reset_complete'),

    # view: password_reset_succesfully_changed
    #url(r'^password_successfully_changed/$',
    #    'login.views.password_reset_succesfully_changed',
    #     name='password_reset_succefully_changed'),
)
