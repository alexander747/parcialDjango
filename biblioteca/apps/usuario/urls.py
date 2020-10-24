from django.contrib import admin
from django.urls import path
from.import views

app_name = "usuarios_app"

urlpatterns = [
    path('crearUsuario/', views.crearUsuario.as_view(), name='crearUsuario'),
    path('listarUsuario/', views.listarUsuario.as_view(), name='listarUsuario'),
    path('actualizarUsuario/<pk>/', views.actualizarUsuario.as_view(), name='actualizarUsuario'),
    path('eliminarUsuario/<pk>/', views.eliminarUsuario.as_view(), name='eliminarUsuario')
]
