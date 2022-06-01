from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('list/user/', views.ListUsuariosView.as_view(), name='list-user'),
    path('create/user/', views.CreateUsuarioView.as_view(), name='create-user'),
    path('update/user/<pk>/', views.UpdateUsuarioView.as_view(), name='update-user'),
    path('delete/user/<pk>/', views.DeleteUsuarioView.as_view(), name='delete-user'),

    path('list/resenia/', views.ListReseniaView.as_view(), name='list-resenia'),
    path('create/resenia/', views.CreateReseniaView.as_view(), name='create-resenia'),
    path('update/resenia/<pk>/', views.UpdateReseniaView.as_view(), name='update-resenia'),
    path('delete/resenia/<pk>/', views.DeleteReseniaView.as_view(), name='delete-resenia'),
]
