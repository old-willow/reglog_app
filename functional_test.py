import unittest
from selenium import webdriver
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
