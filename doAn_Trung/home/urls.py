from django.urls import path
from . import views
urlpatterns = [
    path('',views.trangchu,name="trangchu"),
    path('add',views.add,name='them'),


]