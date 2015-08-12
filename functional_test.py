import unittest

from selenium import webdriver
from selenium.webdriver.common.keys import Keys

from django.core import mail


class ReglogBasicTest(unittest.TestCase):
    def setUp(self):
        self.browser = webdriver.Firefox()

    def tearDown(self):
        self.browser.close()

    def test_get_home_page(self):
        self.browser.get('http://127.0.0.1:8000')

        self.assertIn("Home Page for", self.browser.title)

    def test_get_login_page(self):
        self.browser.get('http://127.0.0.1:8000/login/')

        self.assertEqual("Login Form", self.browser.title)

    def test_get_register_page(self):
        self.browser.get('http://127.0.0.1:8000/register/register-form/')

        self.assertEqual("Registration Form", self.browser.title)

    def test_get_password_reset_page(self):
        self.browser.get('http://127.0.0.1:8000/login/password_reset/')

        self.assertEqual("Password Reset Form", self.browser.title)


class LoginTests(unittest.TestCase):
    def setUp(self):
        self.browser = webdriver.Firefox()

    def tearDown(self):
        self.browser.close()

    def test_check_login_ajax_with_existing_user(self):
        """
        Checks if existing user is given.
        """
        self.browser.get('http://127.0.0.1:8000/login/')
        username_element = self.browser.find_element_by_name('username')
        username_element.send_keys('robi', Keys.TAB)

        self.assertNotIn('No such user!', self.browser.page_source)
        #self.browser.switch_to_alert()

    def test_check_login_ajax_with_non_existing_user(self):
        """
        Checks if non existing user is given.
        """
        self.browser.get('http://127.0.0.1:8000/login/')
        username_element = self.browser.find_element_by_name('username')
        username_element.send_keys('fobi', Keys.TAB)
        self.browser.implicitly_wait(3)

        self.assertIn('No such user!', self.browser.page_source)


class SendEmailTest(unittest.TestCase):
    def test_send_mail(self):
        """
        Basic email sending test.
        """
        from django.conf import settings

        settings.configure(EMAIL_BACKEND='django.core.mail.backends.locmem.EmailBackend')

        mail.send_mail('Test subject', 'Message part of the email.',
                       'robert.kolozsi@gmail.com', ['robert.kolozsi@gmail.com', ],
                       fail_silently=False)

        self.assertEqual(len(mail.outbox), 1)
        self.assertEqual(mail.outbox[0].subject, 'Test subject')


if __name__ == '__main__':
    unittest.main()
