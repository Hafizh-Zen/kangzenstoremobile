from django.db import models

class Product(models.Model):
    name = models.CharField(max_length=255)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    description = models.TextField()
    rating = models.DecimalField(max_digits=5, decimal_places=2)
    desc1 = models.TextField()
    desc2 = models.TextField()
    desc3 = models.TextField()
    desc4 = models.TextField()
    desc5 = models.TextField()


    def _str_(self):
        return self.name