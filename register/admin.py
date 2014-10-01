from django.contrib import admin
from django import forms

from register.models import User_Data


class RegistrationFormAdmin(forms.ModelForm):
    """
    Overriding registration form for admin site.
    """

    class Meta:
        # Don't know why, I found on github that this shuld be set.
        # On Django1.8, ModelForm.Meta must contain fields or exclude fields
        exclude = []

        model = User_Data
        widgets = {
            'password': forms.PasswordInput(),
        }


class User_Data_Admin(admin.ModelAdmin):
    form = RegistrationFormAdmin


admin.site.register(User_Data, User_Data_Admin)
