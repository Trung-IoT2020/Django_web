from django.conf.urls import url
from django.shortcuts import render, redirect
from .models import dangbaichinh,dangbaichutro,dangbainguoitimtro,quan_tp,thanhpho,dattro
from django.core.files.storage import FileSystemStorage
from django.core.paginator import Paginator
from django.http import HttpResponse
from . import forms
from django.contrib.auth.decorators import login_required
# Create your views here.

def index(request):
    dest_tong = dangbaichutro.objects.all().order_by("-ngaythang")
    soluongbai = Paginator(dest_tong,4)
    page_so = request.GET.get('page')
    page_obj = soluongbai.get_page(page_so)
    return render(request, 'index.html',{'dest_tong':page_obj})
def index_ntt(request):
    dest_phu = dangbainguoitimtro.objects.all().order_by("-ngaythang")
    soluongbai = Paginator(dest_phu,4)
    page_so = request.GET.get('page')
    page_obj = soluongbai.get_page(page_so)
    return render(request, 'index_ntt.html',{'dest_phu':page_obj})

def timtheoquan(request):
    theoquan = request.GET['theoquan']
    allPosts = dangbaichutro.objects.filter(quan__startswith=theoquan)
    show = {'allPosts_quan': allPosts}
    return render(request, 'index_timtheoquan.html', show)
@login_required(login_url='/accounts/login')
def dangbai(request):

    if request.method =='POST':
             ten = request.user.username
             if request.POST.get('chutro'):
                 dangbaichinhs = dangbaichinh.objects.update_or_create(ten=ten, id_ntt=0)
                 return render(request, 'ctdb_chutro.html')
             else:
                 dangbaichinhs =dangbaichinh.objects.update_or_create(ten=ten, id_ct=0)
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
            quan= request.POST['quan']
            tp =request.POST['tp']
            status =0
            dangbaichutros = dangbaichutro.objects.update_or_create(ten=ten,tieude=tieude,noidung=noidung,img=img,gia=gia,diachi=diachi,sdt=sdt,quan=quan,tp=tp,status=status)

            return redirect('/')
    else:
        return render(request,'dangbai_chutro.html')


# @login_required(login_url='/accounts/login')
# def dangbai_chutro(request):
#     if request.method =='POST':
#         form = forms.CreateChuTro(request.POST,request.FILES)
#         if form.is_valid():
#             return redirect(index)
#     else:
#         form = forms.CreateChuTro()
#     return render(request,'dangbai_chutro.html',{'form': form})
#

@login_required(login_url='/accounts/login')
def dangbai_nguoitimtro(request):# index phu (nút index phụ)
    if request.method == 'POST':
        tieude = request.POST['tieude']
        ten = request.user.username
        noidung = request.POST['noidung']
        sdt = request.POST['sdt']
        quan = request.POST['quan']
        tp = request.POST['tp']
        status = request.POST['status']
        dangbainguoitimtros = dangbainguoitimtro.objects.create(ten=ten,tieude=tieude,noidung=noidung,sdt=sdt,quan=quan,tp=tp,status=status)
        dangbainguoitimtros.save()
        return redirect('/')
    else:
        return render(request,'dangbai_chutro.html')


def chitietbaidang(request,id):
   post = dangbaichutro.objects.get(id=id)
   return render(request,'index_noidungchitiet.html',{'post':post})
def chitietbaidang_phu(request,id):
   post = dangbainguoitimtro.objects.get(id=id)
   return render(request,'index_noidungchitiet_phu.html',{'post':post})


def search(request):
    query = request.GET['query']
    allPosts = dangbaichutro.objects.filter(tieude__icontains=query).order_by("-ngaythang")
    show = {'allPosts': allPosts}
    return render(request,'index_timkiem.html',show)


def datphong(request):
    post = dangbaichutro.objects.get(id=id)
    if request.method == 'POST':
        hoten_dp = request.POST['hoten_dp']
        sdt_dp = request.POST['sdt_dp']
        email_dp = request.POST['email_dp']
        dattros = dattro.objects.create(hoten_dp=hoten_dp,sdt_dp=sdt_dp,email_dp=email_dp)
        dattros.save()
        return render(request, 'index.html', {'post': post})
    else:
        return render(request, 'index_noidungchitiet.html',{'post':post})



