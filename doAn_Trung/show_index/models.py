from django.db import models

# Create your models here.

class Destination(models.Model):
    id= models.IntegerField
    name= models.CharField(max_length=100)
    img= models.ImageField(upload_to='pics')
    desc= models.TextField()
    price= models.IntegerField()
    tieude= models.CharField(max_length=50)
    ngaythang = models.DateTimeField(max_length=False)
    luachon =models.BooleanField(default=False)