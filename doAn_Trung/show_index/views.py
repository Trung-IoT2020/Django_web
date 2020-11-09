from django.shortcuts import render
from .models import Destination
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
    return render(request, 'index.html',{'dest_tong':dest_tong})

