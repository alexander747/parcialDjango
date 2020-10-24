from django.contrib import admin
from django.urls import path
from.import views

app_name = "libros_app"

urlpatterns = [
    path('crearLibros/', views.crearLibros.as_view(), name='crearLibros'),
    path('listarLibros/', views.listarLibros.as_view(), name='listarLibros'),
    path('actualizarLibro/<pk>/', views.actualizarLibro.as_view(), name='actualizarLibro'),
    path('eliminarLibro/<pk>/', views.eliminarLibro.as_view(), name='eliminarLibro')
]
