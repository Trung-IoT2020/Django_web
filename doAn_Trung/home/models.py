from django.utils.timezone import now
import datetime
from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class thanhpho(models.Model):
    id_tp = models.IntegerField
    ten_tp=models.CharField(max_length=50)
    def __str__(self):
        return self.ten_tp


class quan_tp(models.Model):
    id_quan = models.IntegerField
    id_tp = models.ForeignKey(thanhpho,on_delete=models.CASCADE)
    ten_quan=models.CharField(max_length=50)
    def __str__(self):
        return self.ten_quan

class dangbaichutro(models.Model):
    id_ct = models.IntegerField
    ten = models.CharField(max_length=150)
    img = models.ImageField(upload_to='pics/')
    diachi = models.CharField(max_length=100)
    tieude = models.CharField(max_length=50)
    noidung = models.TextField()
    gia = models.IntegerField()
    sdt = models.IntegerField()
    quan= models.IntegerField()
    tp= models.IntegerField()
    status=models.IntegerField()
    ngaythang = models.DateTimeField(default=now, editable=False)
    def __str__(self):
        return self.tieude

    def snipet(self):
        return self.noidung[:50]+'...'


class dangbainguoitimtro(models.Model):
    id_ntt = models.IntegerField
    ten = models.CharField(max_length=150)
    tieude = models.CharField(max_length=50)
    noidung = models.TextField(max_length=255)
    sdt = models.IntegerField()
    quan= models.IntegerField()
    tp= models.IntegerField()
    status = models.IntegerField()
    ngaythang = models.DateTimeField(default=now, editable=False)
    def __str__(self):
        return self.tieude



class dangbaichinh(models.Model):
    id= models.IntegerField
    ten= models.CharField(max_length=150)
    id_ct =dangbaichutro.id_ct(default=True)
    id_ntt =dangbainguoitimtro.id_ntt(default=True)

    def __str__(self):
        return self.ten

class dattro(models.Model):
    id= models.IntegerField
    hoten_dp= models.CharField(max_length=150)
    sdt_dp=models.IntegerField()
    mail_dp = models.CharField(max_length=150)
    def __str__(self):
        return self.sdt_dp
