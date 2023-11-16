from django.db import models


class ListProducts(models.Model):
    product_name = models.CharField(max_length=200)
    product_price = models.DecimalField(max_digits=5, decimal_places=2)
    quantity = models.IntegerField()

    class Meta:
        db_table = 'listProducts'
