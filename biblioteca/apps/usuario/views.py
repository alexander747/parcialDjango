from django.shortcuts import render
from .models import Usuarios
from django.urls import reverse_lazy

from django.views.generic import  TemplateView, UpdateView ,ListView, CreateView, DeleteView

class listarUsuario(ListView):
    template_name = 'listarUsuario.html'
    model = Usuarios
    context_object_name = 'usuarios'

class crearUsuario(CreateView):
    template_name = 'crearUsuario.html'
    model = Usuarios
    fields = ('__all__')
    success_url='.'

class actualizarUsuario(UpdateView):
    template_name = "actualizarUsuario.html"
    model = Usuarios
    fields=("__all__")
    success_url = reverse_lazy('usuarios_app:listarUsuario')
    

class eliminarUsuario(DeleteView):
    template_name = "eliminarUsuario.html"
    model= Usuarios
    fields=("__all__")
    success_url = reverse_lazy('usuarios_app:listarUsuario')

   