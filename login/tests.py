"""
This file demonstrates two different styles of tests (one doctest and one
unittest). These will both pass when you run "manage.py test".

Replace these with more appropriate tests for your application.
"""

from django.test import TestCase
from django.test import Client
from django.http import HttpRequest

from django.core.urlresolvers import resolve

from django.template.loader import render_to_string

from django.contrib.auth.models import User

from login.views import (dummy_ajax, ajax_login_username_check, )
from home.views import home_page

class SimpleTest(TestCase):
    def test_basic_addition(self):
        """
        Tests that 1 + 1 always equals 2.
        """
        self.failUnlessEqual(1 + 1, 2)

__test__ = {"doctest": """
Another way to test that 1 + 1 is equal to 2.

>>> 1 + 1 == 2
True
"""}


class AjaxRequestTest(TestCase):
    def setUp(self):
        self.client = Client()
        username = User.objects.create(username='robi')

    def test_dummy_ajax(self):
        """ Dummy ajax. Big dummy. """
        #request = HttpRequest()
        response = self.client.get('/login/dummy-ajax/')
        find = resolve('/login/dummy-ajax/')
        #print('dummy-ajax:', find)
        self.assertEqual(find.func, dummy_ajax)
        self.assertEqual(response.status_code, 200)

    def test_simple_ajax_login_username_check_call(self):
        """
        Test if ajax works without any parameter.
        """
        request = HttpRequest()
        find = resolve('/login/check-username/')
        #print(find.url_name, find.func)
        self.assertEqual(find.func, ajax_login_username_check)

    def test_login_with_ajax_with_registered_username(self):
        """
        Test if ajax call return the 'OK" string if username robi is found.
        """
        request = HttpRequest()
        response = self.client.get('/login/check-username/',
                       { 'u' : 'robi', },
                       HTTP_X_REQUESTED_WITH='XMLHttpRequest')
        #find = resolve('/login/check-username/?u=robi')
        #self.assertEqual(find.func, ajax_login_username_check)
        self.assertEqual('OK', response.content)

    def test_with_login_ajax_with_unregistered_username(self):
        """
        Test if ajax call return the 'OK" string if username robi is found.
        """
        request = HttpRequest()
        response = self.client.get('/login/check-username/',
                                   { 'u' : 'mufurc', },
                                   HTTP_X_REQUESTED_WITH='XMLHttpRequest')
        #find = resolve('/login/check-username/?u=mufurc')
        #self.assertEqual(find.func, ajax_login_username_check)
        self.assertEqual('ERR', response.content)
