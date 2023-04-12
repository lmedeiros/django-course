from django.test import SimpleTestCase

from app import calc


class TestCalc(SimpleTestCase):
    def test_add(self):
        res = calc.add(3, 5)
        self.assertEquals(res, 8)

    def test_sub(self):
        res = calc.sub(3, 5)
        self.assertEquals(res, -2)
