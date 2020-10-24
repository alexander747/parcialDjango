from django.shortcuts import render
from .models import Prestamos
from django.views.generic import  TemplateView, UpdateView ,ListView, CreateView, DeleteView
from django.urls import reverse_lazy


# Create your views here.

class listarPrestamo(ListView):
    template_name = 'mostrarPrestamo.html'
    model = Prestamos
    context_object_name = 'prestamos'

class crearPrestamo(CreateView):
    template_name = 'crearPrestamo.html'
    model = Prestamos
    fields = ('__all__')
    success_url = reverse_lazy('prestamos_app:listarPrestamo')

class actualizarPrestamo(UpdateView):
    template_name = "actualizarPrestamo.html"
    model = Prestamos
    fields=("__all__")
    success_url = reverse_lazy('prestamos_app:listarPrestamo')
    

class eliminarPrestamo(DeleteView):
    template_name = "eliminarPrestamo.html"
    model= Prestamos
    fields=("__all__")
    success_url = reverse_lazy('prestamos_app:listarPrestamo')
    