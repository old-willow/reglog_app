from django.db import models
from django.contrib.auth import models as django_models

from datetime import datetime

class Country(models.Model):
    country_code = models.CharField(max_length=3)
    country_name = models.CharField(max_length=64)

    def __unicode__(self):
        return '%s' % (self.country_name, )


class User_Data(models.Model):
    '''
    Custom Users Table.Here I store some additionl data
    from registred users which are not provided in default
    'auth_user' table.
    '''

    GENDER_CHOICES = (
        ('', 'NULL'),
        ('F', 'Female'),
        ('M', 'Male'),
    )

    user = models.ForeignKey(django_models.User, primary_key=True)
    gender = models.CharField(blank=True, null=True,
                              max_length=1, default='NULL',
                              choices=GENDER_CHOICES)
    webpage = models.URLField(max_length=255,
                              blank=True,
                              null=True,
                              verbose_name='Web page')
    phone = models.CharField(max_length=255,
                             blank=True,
                             null=True,
                             default='NULL')
    countries = models.ForeignKey(Country)
    address = models.CharField(max_length=512)
    date_of_birth = models.DateField(blank=True, null=True, default='NULL')
    note = models.TextField(blank=True, null=True, default='NULL')
    portrait = models.ImageField(upload_to='portrait-images/',
                                 blank=True, null=True,
                                 default='NULL')

    def __unicode__(self):
        # Taking data form 'user-data' table.
        return u'%s %s' % (self.user.last_name, self.user.first_name)
