from django.test import TestCase
from django.test import Client
from django.http import HttpRequest

from django.core.urlresolvers import resolve

from django.template.loader import render_to_string

from home.views import home_page


class HomePageTest(TestCase):
    def test_home_page(self):
        """
        Simply test if root url works for home page.
        """
        home = resolve('/')
        self.assertEqual(home.func, home_page)

    def test_if_home_page_contains_returns_correct_content(self):
        """"""
        request = HttpRequest()
        response = home_page(request)
        html = render_to_string('home/index.html')
        self.assertEqual(response.content, html)

