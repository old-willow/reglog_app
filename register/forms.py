from django import forms
from django.contrib.auth.models import User
from django.contrib.admin import widgets # for the built in django datepicker.

from reglog.register.models import User_Data, Country

from datetime import datetime


class RegistrationFormCustom(forms.Form):
    """ Custom registration form """

    GENDER_CHOICE = (
        ('', '-- --'),
        ('F', 'Female'),
        ('M', 'Male'),
    )

    gender = forms.ChoiceField(required=False,
                               choices=GENDER_CHOICE,
                               label='Gender:')

    firstname = forms.CharField(label='First name:')

    lastname = forms.CharField(label='Last name:')

    username = forms.CharField(label='User name:')

    phone = forms.CharField(label='Phone number:', required=False)

    countries = forms.ModelChoiceField(queryset=Country.objects.all(),
                                       label='Country:',
                                       empty_label='-- --')

    address = forms.CharField(widget=forms.Textarea, label='Address:')

    email = forms.EmailField(label='e-mail:')

    webpage = forms.URLField(required=False, label='Web page:')

    password = forms.CharField(widget=forms.PasswordInput(render_value=False),
                               max_length=15, min_length=4,
                               label='Password:')

    confirm_password = forms.CharField(widget=forms.PasswordInput(render_value=False),
                                       max_length=15, min_length=4,
                                       label='Confirm password:')

    datepicker = forms.DateField(required=False, label='Date of birth:')

    note = forms.CharField(widget=forms.Textarea, required=False, label='Notes:')

    portrait = forms.ImageField(required=False,
                                #max_length=5,
                                label='Portrait picture:')


    def __unicode__(self):
        return "%s %s" % (self.firstname, self.lastname)


    def clean_username(self):
        """
        Custom validation:
            Check's the username field.
            If username doesn't exist: ok.
            else stop.
        """
        try:
            # Find username in database if exists.
            User.objects.get(username=self.cleaned_data['username'])

        except User.DoesNotExist: # If no such username return data.
            return self.cleaned_data['username']

        # Else, if there is already a username raise exception!
        raise forms.ValidationError('Username already exists. Please submit another one.')


    def clean_portrait(self):
        """
        Custom validation:
            of portrait field, if it is not empty.
            Allowed only 'jpg' files!
        """
        if self.cleaned_data['portrait']:
            if str(self.cleaned_data['portrait']).endswith('.jpg'):
                return self.cleaned_data['portrait']
            else:
                raise forms.ValidationError('Only allowed \'jpg\' files!')


    def clean_email(self):
        """
        Custom validation:
            check's if email exist in database.
        """
        try:
            # This email is in 'auth_user' table.
            User.objects.get(email=self.cleaned_data['email'])

        except User.DoesNotExist:
            return self.cleaned_data['email']

        raise forms.ValidationError(
            'This email is already in use, please choose another one.')


    def save(self):
        """
        First storing data to the User database,
        then storing my additional data to my database.
        """
        django_user = User.objects.create_user(
            username = self.cleaned_data['username'],
            email = self.cleaned_data['email'],
            password = self.cleaned_data['password'])

        # Storing the rest of user data in 'auth_user' django table.
        django_user.first_name = self.cleaned_data['firstname']
        django_user.last_name = self.cleaned_data['lastname']

        django_user.save()

        extend_user_data = User_Data.objects.create(
            user_id = django_user.id,
            gender = self.cleaned_data['gender'],
            phone = self.cleaned_data['phone'],
            countries = self.cleaned_data['countries'],
            address = self.cleaned_data['address'],
            webpage = self.cleaned_data['webpage'],
            date_of_birth = self.cleaned_data['datepicker'],
            note = self.cleaned_data['note'],
            portrait = self.cleaned_data['portrait'])

        return extend_user_data


    def clean(self):
        if 'password' in self.cleaned_data and 'confirm_password' in self.cleaned_data:

            password = self.cleaned_data['password']
            conf_password = self.cleaned_data['confirm_password']
            if password != conf_password:
                raise forms.ValidationError('Passwords must match!')

        return self.cleaned_data
