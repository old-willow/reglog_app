import unittest
from selenium import webdriver


class ReglogHomePageTest(unittest.TestCase):
    def setUp(self):
        self.browser = webdriver.Firefox()

    def tearDown(self):
        self.browser.close()

    def test_get_home_page(self):
        self.browser.get('http://127.0.0.1:8000')

        assert "Home Page for" in self.browser.title


if __name__ == '__main__':
    unittest.main()
