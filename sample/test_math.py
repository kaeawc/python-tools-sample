import unittest
from unittest import mock
from sample.math import add


class AdditionTest(unittest.TestCase):

    def test_one_plus_one(self):
        self.assertEquals(add(1, 1), 2)
