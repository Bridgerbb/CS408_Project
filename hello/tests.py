from django.test import TestCase

class HelloTest(TestCase):
    def test_homepage_loads(self):
        # Simulates a user visiting the home page
        response = self.client.get('/')
        self.assertEqual(response.status_code, 200) # Ensures the page loads successfully