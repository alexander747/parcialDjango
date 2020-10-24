from django.contrib import admin
from django.urls import path
from.import views

app_name = "prestamos_app"

urlpatterns = [
    path('crearPrestamo/', views.crearPrestamo.as_view(), name='crearPrestamo'),
    path('listarPrestamo/', views.listarPrestamo.as_view(), name='listarPrestamo'),
    path('actualizarPrestamo/<pk>/', views.actualizarPrestamo.as_view(), name='actualizarPrestamo'),
    path('eliminarPrestamo/<pk>/', views.eliminarPrestamo.as_view(), name='eliminarPrestamo')
]
