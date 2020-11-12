from django.urls import path
from . import views
urlpatterns = [
    path('',views.index,name="index"),
    path('dangbai',views.dangbai,name="dangbai"),
    path('<int:id>/',views.chitietbaidang,name="chitietbaidang"),
]