from django.conf.urls import patterns, url
#from login.forms import PasswordResetForm, ChangePasswordForm
#from login import forms

#from django.contrib.auth.forms import SetPasswordForm


urlpatterns = patterns(
    '',
    url(r'^$', 'login.views.process_login', name='index'),

    url(r'dummy-ajax/$',
        'login.views.dummy_ajax',
        name='dummy-ajax'),

    url(r'check-username/$',
        'login.views.ajax_login_username_check',
        name='ajax-usercheck'),  # AJAX
    url(r'^loged-in/$', 'login.views.loged_in', name='logedin'),
    url(r'^portrait-look/$', 'login.views.show_portrait', name='portrait'),
    url(r'^loged-out/$', 'login.views.loged_out', name='logedout'),
    url(r'^logout/$', 'login.views.process_logout', name='logout'),
    url(r'^login-error/$', 'login.views.login_error', name='login-error'),

    # For resetting a password (user has lost his password).
    # view: password_reset
    # This view presents the form for typing in the email address to which will
    # be sent a one time usable link.
    url(r'password_reset/$',
        'login.views.password_reset',
        name='password_reset'),

    # The view which show the page after a user has been emailed a link to
    # reset the password. This view is called by default if password_reset()
    # view doesn't have an explicit post_reset_redirect URL set.
    url(r'password_reset/done/$',
        'login.views.password_reset_done',
        name='password_reset_done'),

    # view: password_reset_confirm
    url(r'^reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',
        'login.views.password_reset_confirm',
        name='password_reset_confirm'),

    # view: password_reset_complete
    url(r'^reset/done/$',
        'django.contrib.auth.views.password_reset_complete',
        {'template_name': 'login/password_reset_complete.html'},
        name='password_reset_complete'),
)
