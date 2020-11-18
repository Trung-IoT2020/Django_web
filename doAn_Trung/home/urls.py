from django.urls import path
from . import views
urlpatterns = [
    path('',views.index,name="index"),
    path('dangbai',views.dangbai,name="dangbai"),
    path('dangbai_chutro',views.dangbai_chutro,name="dangbai_chutro"),
    path('dangbai_nguoitimtro',views.dangbai_nguoitimtro,name="dangbai_nguoitimtro"),
    path('<int:id>/',views.chitietbaidang,name="chitietbaidang"),
]