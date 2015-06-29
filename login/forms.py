from django import forms
from django.contrib.auth.models import User  # Important for hashing passwords!
                                             # And for using built in table, extending by my own data.

#from register.models import User_Data

from django.contrib.sites.models import Site
from django.template import Context, loader
from django.contrib.auth.tokens import default_token_generator
from django.utils.translation import ugettext_lazy as _
from django.utils.http import int_to_base36


class LoginForm(forms.Form):
    """ Login form """
    username = forms.CharField(label='Username:')

    password = forms.CharField(widget=forms.PasswordInput, label='Password:')

    def __unicode__(self):
        return "%s" % (self.username, )

    def clean_username(self):
        """
        Custom validation:
            if user doesn't exists raise error.
        """
        try:
            User.objects.get(username=self.cleaned_data['username'])

        except User.DoesNotExist:
            raise forms.ValidationError('The user ' +
                                        str(self.cleaned_data['username']) +
                                        ' is not registered yet!')

        return self.cleaned_data['username']


class PasswordResetForm(forms.Form):
    """ Forgot Password Form """
    email = forms.EmailField(label='e-mail:')

    # I need these for substitution of text in template.
    formname = 'Password Reset Form'
    formname2 = 'password_reset_form'

    def clean_email(self):
        try:
            self.users_cache = User.objects.filter(email__iexact=self.cleaned_data['email'])

        except User.DoesNotExist:
            raise forms.ValidationError('No such email address!')

        return self.cleaned_data['email']

    def save(self,
             request,
             from_email=None,
             subject_template_name=None,
             domain_override=None,
             html_email_template_name='login/password_reset_email.html',
             email_template_name='login/password_reset_email.html',
             use_https=False,
             token_generator=default_token_generator):
        """
        Generates a one-use only link for resetting password and sends to the user
        """
        from django.core.mail import send_mail
        for user in self.users_cache:
            if not domain_override:
                current_site = Site.objects.get_current()
                site_name = current_site.name
                domain = current_site.domain
            else:
                site_name = domain = domain_override
            t = loader.get_template(email_template_name)
            c = {
                'email': user.email,
                'domain': domain,
                'site_name': site_name,
                'uid': int_to_base36(user.id),
                'user': user,
                'token': token_generator.make_token(user),
                'protocol': use_https and 'https' or 'http',
            }
            send_mail(_("Password reset on %s") % site_name,
                      t.render(Context(c)), None, [user.email])


class ChangePasswordForm(forms.Form):
    """
    This form is for changeing password.
    It represents two textboxes for entering and confirming new password.
    """
    new_password1 = forms.CharField(widget=forms.PasswordInput,
                                    label='New Password:')

    new_password2 = forms.CharField(widget=forms.PasswordInput,
                                    label='Confirm New Password:')

    # I need these for template substitution.
    formname = 'Password Reset Confirm'
    formname2 = 'password_reset_confirm'

    def __init__(self, user, *args, **kwargs):
        self.user = user
        super(ChangePasswordForm, self).__init__(*args, **kwargs)

    def __unicode__(self):
        return "Instance of ChangePasswordForm"

    def clean(self):
        if 'new_password1' in self.cleaned_data and 'new_password2' in self.cleaned_data:
            new_pass1 = self.cleaned_data['new_password1']
            new_pass2 = self.cleaned_data['new_password2']
            if new_pass1 != new_pass2:
                raise forms.ValidationError('Passwords must match!')

        return self.cleaned_data

    def save(self, commit=True):
        self.user.set_password(self.cleaned_data['new_password1'])
        if commit:
            self.user.save()
        return self.user
