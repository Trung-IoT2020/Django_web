from django.shortcuts import render, redirect
from .models import Destination
from django.core.files.storage import FileSystemStorage
from django.core.paginator import Paginator
from django.http import HttpResponse

# Create your views here.
def index(request):
    # # 09/11/2020 den model (9:15)S
    # dest1 = Destination()
    # dest1.name = "phong A"
    # dest1.desc = "phong nay kha bu"
    # dest1.price = 700
    # dest1.img = 'image_2.jpg'
    # dest1.tieude = 'phong loai 1'
    #
    # dest2 = Destination()
    # dest2.name = "phong B"
    # dest2.desc = "phong nay vua"
    # dest2.price = 600
    # dest2.img = 'image_3.jpg'
    # dest2.tieude = 'phong loai 2'
    #
    # dest3 = Destination()
    # dest3.name = "phong c"
    # dest3.desc = "phong nay nho"
    # dest3.price = 500
    # dest3.img = 'image_4.jpg'
    # dest3.tieude = 'phong loai 3'
    # dest_tong = [dest1,dest2,dest3]

    #tiếp theo???
    dest_tong = Destination.objects.all()
    soluongbai = Paginator(dest_tong,4)
    page_so = request.GET.get('page')
    page_obj = soluongbai.get_page(page_so)
    return render(request, 'index.html',{'dest_tong':page_obj})

def dangbai(request):
    if request.method =='POST':
             first_name = request.POST['first_name']
             desc1 = request.POST['desc']
             update_file =request.FILES['img']
             fs = FileSystemStorage()
             img=fs.save(update_file.name,update_file)
             price1 = request.POST['price']
             tieude1 = request.POST['tieude']
             sdt = request.POST['sdt']
             diachi = request.POST['diachi']
             quan = request.POST['quan']
             Destinations = Destination.objects.update_or_create(first_name=first_name,img=img, desc=desc1,price=price1,tieude=tieude1,sdt=sdt,diachi=diachi,quan=quan)
             return HttpResponse('<a href="/">HOME</a>')
    else:
        return render(request,'dangbai.html')

    #
    #
    #     Destinations = Destination.objects.create_user(id=id,name = name,img = img, desc = desc ,price= price,tieude= tieude,luachon=luachon)
    #     Destinations.save();
    #
    # else:
    #     dest_tong = Destination.objects.all()
    #     return render(request, 'index.html', {'dest_tong': dest_tong})



def chitietbaidang(request,id):
   post = Destination.objects.get(id=id)
   return render(request,'chitietbaidang.html',{'post':post})
