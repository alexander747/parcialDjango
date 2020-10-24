from django.contrib import admin
from django.urls import path
from.import views

app_name = "autores_app"

urlpatterns = [
    path('crearAutores/', views.crearAutores.as_view(), name='crearAutores'),
    path('listarAutores/', views.listarAutores.as_view(), name='listarAutores'),
    path('actualizarAutores/<pk>/', views.actualizarAutores.as_view(), name='actualizarAutores'),
    path('eliminarAutores/<pk>/', views.eliminarAutores.as_view(), name='eliminarAutores')
]
