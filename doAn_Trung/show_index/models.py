from django.db import models

# Create your models here.

class Destination(models.Model):
    id= models.IntegerField
    first_name= models.CharField(max_length=150)
    img= models.ImageField(upload_to='pics/')
    desc= models.TextField()
    price= models.IntegerField()
    sdt = models.IntegerField()

    diachi = models.CharField(max_length=100)
    quan = models.CharField(max_length=10)
    tieude= models.CharField(max_length=50)
    ngaythang = models.DateTimeField(auto_now_add=True)
    luachon = models.BooleanField(default=0)


    def __str__(self):
        return self.tieude