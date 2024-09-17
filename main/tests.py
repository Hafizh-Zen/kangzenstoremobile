from django.test import TestCase, Client
from django.test import TestCase
from .models import Product

class ProductModelTest(TestCase):

    def setUp(self):
        self.product = Product.objects.create(
            name="Test Product",
            price=99.99,
            description="This is a test product",
            rating=4.50,
            desc1="Detail 1",
            desc2="Detail 2",
            desc3="Detail 3",
            desc4="Detail 4",
            desc5="Detail 5"
        )

    def test_product_creation(self):
        """Test that a product can be successfully created."""
        self.assertEqual(self.product.name, "Test Product")
        self.assertEqual(self.product.price, 99.99)
        self.assertEqual(self.product.description, "This is a test product")
        self.assertEqual(self.product.rating, 4.50)
        self.assertEqual(self.product.desc1, "Detail 1")
        self.assertEqual(self.product.desc2, "Detail 2")
        self.assertEqual(self.product.desc3, "Detail 3")
        self.assertEqual(self.product.desc4, "Detail 4")
        self.assertEqual(self.product.desc5, "Detail 5")

    def test_product_string_representation(self):
        """Test the string representation of the product."""
        self.assertEqual(str(self.product), self.product.name)
