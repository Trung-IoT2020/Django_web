from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def trangchu(request):
    return render(request, 'home_index.html',{'name':'NNavi'})
def add(request):
    value1 = request.POST['btn1']
    value2 = request.POST['btn2']
    res = value1 + value2

    return render(request,'ketqua.html',{'ketqua':res})