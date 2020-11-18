from django.conf.urls import url
from django.shortcuts import render, redirect
from .models import dangbaichinh,dangbaichutro,dangbainguoitimtro
from django.core.files.storage import FileSystemStorage
from django.core.paginator import Paginator
from django.http import HttpResponse
from accounts.views import register
from django.contrib.auth.decorators import login_required
# Create your views here.
def index(request):
    dest_tong = dangbaichutro.objects.all()
    soluongbai = Paginator(dest_tong,4)
    page_so = request.GET.get('page')
    page_obj = soluongbai.get_page(page_so)
    return render(request, 'index.html',{'dest_tong':page_obj})


@login_required(login_url='/accounts/login')
def dangbai(request):

    if request.method =='POST':
             ten = request.user.username
             quan = request.POST['quan']
             tp = request.POST['tp']
             if request.POST.get('chutro'):
                 dangbaichinhs = dangbaichinh.objects.update_or_create(ten=ten, quan=quan, tp=tp, id_ntt=0)
                 return render(request, 'ctdb_chutro.html')
             else:
                 dangbaichinhs =dangbaichinh.objects.update_or_create(ten=ten, quan=quan, tp=tp, id_ct=0)
                 return render(request, 'ctdb_nguoitimtro.html')
    else:
        return render(request,'dangbai.html')


@login_required(login_url='/accounts/login')
def dangbai_chutro(request): #index chinh(nút index chính)
    if request.method =='POST':
            tieude = request.POST['tieude']
            ten = request.user.username
            noidung = request.POST['noidung']
            update_file =request.FILES['img']
            fs = FileSystemStorage()
            img=fs.save(update_file.name,update_file)
            gia = request.POST['gia']
            diachi = request.POST['diachi']
            sdt = request.POST['sdt']

            dangbaichutros = dangbaichutro.objects.update_or_create(ten=ten,tieude=tieude,noidung=noidung,img=img,gia=gia,diachi=diachi,sdt=sdt)

            return HttpResponse('<a href="/">HOME</a>')
    else:
        return render(request,'dangbai_chutro.html')


@login_required(login_url='/accounts/login')
def dangbai_nguoitimtro(request):# index phu (nút index phụ)
    if request.method == 'POST':
        tieude = request.POST['tieude']
        ten = request.user.username
        noidung = request.POST['noidung']
        sdt = request.POST['sdt']

        dangbainguoitimtros = dangbainguoitimtro.objects.create(ten=ten,tieude=tieude,noidung=noidung,sdt=sdt)
        dangbainguoitimtros.save()
        return HttpResponse('<a href="/">HOME</a>')
    else:
        return render(request,'dangbai_chutro.html')


def chitietbaidang(request,id):
   post = dangbaichinh.objects.get(id=id)
   return render(request,'chitietbaidang.html',{'post':post})


# class DestinationListView(ListView):
#     model = Destination
#     template_name = 'noidungtimkiem.html'
#
#     def get_context_data(seft, **kwargs):
#         context = super().get_context_data(**kwargs)
#         context['filter'] = OrderFilers(seft.request.GET, queryset=seft.get_queryset())
#         return context