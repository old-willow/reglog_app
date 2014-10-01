from django.contrib import admin
from reglog.register.models import User_Data
from django import forms


class RegistrationFormAdmin(forms.ModelForm):
    """
    Overriding registration form for admin site.
    """
    class Meta:
        model = User_Data
        widgets = {
            'password': forms.PasswordInput(),
        }


class User_Data_Admin(admin.ModelAdmin):
    form = RegistrationFormAdmin


admin.site.register(User_Data, User_Data_Admin)
