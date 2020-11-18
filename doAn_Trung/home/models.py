from django.db import models
# Create your models here.

class dangbaichutro(models.Model):
    id_ct = models.IntegerField
    ten = models.CharField(max_length=150)
    img = models.ImageField(upload_to='pics/')
    diachi = models.CharField(max_length=100)
    tieude = models.CharField(max_length=50)
    noidung = models.TextField()
    gia = models.IntegerField()
    sdt = models.IntegerField()
    ngaythang = models.DateTimeField(auto_now_add=True,auto_now=False)
    def __str__(self):
        return self.tieude
class dangbainguoitimtro(models.Model):
    id_ntt = models.IntegerField
    ten = models.CharField(max_length=150)
    tieude = models.CharField(max_length=50)
    noidung = models.TextField(max_length=255)
    sdt = models.IntegerField()
    ngaythang = models.DateTimeField(auto_now_add=True,auto_now=False)
    def __str__(self):
        return self.tieude
class dangbaichinh(models.Model):
    id= models.IntegerField
    ten= models.CharField(max_length=150)
    quan = models.CharField(max_length=10)
    tp = models.CharField(max_length=50)
    id_ct =dangbaichutro.id_ct(default=True)
    id_ntt =dangbainguoitimtro.id_ntt(default=True)


    def __str__(self):
        return self.ten



