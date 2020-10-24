from django.shortcuts import render

# Create your views here.
from .models import Autores
from django.urls import reverse_lazy
from django.views.generic import  TemplateView, UpdateView ,ListView, CreateView, DeleteView

# class listarAutores(ListView):
#     llaveForanea= Autores.objects.prefetch_related()
#     queryset= llaveForanea
#     fields=('__all__')
#     template_name = "listarAutor.html"
#     context_object_name = 'autores'


class listarAutores(ListView):
    template_name = 'listarAutor.html'
    model = Autores
    context_object_name = 'autores'


class crearAutores(CreateView):
    template_name = 'crearAutores.html'
    model = Autores
    fields = ('__all__')
    success_url = reverse_lazy('autores_app:listarAutores')


class actualizarAutores(UpdateView):
    template_name = "actualizarAutores.html"
    model = Autores
    fields=("__all__")
    success_url = reverse_lazy('autores_app:listarAutores')

    # success_url='/listarAutores/'

class eliminarAutores(DeleteView):
    template_name = "eliminarAutores.html"
    model= Autores
    fields=("__all__")
    success_url = reverse_lazy('autores_app:listarAutores')
    