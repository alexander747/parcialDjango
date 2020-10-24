from .models import Libros
from django.urls import reverse_lazy


from django.views.generic import  TemplateView, UpdateView ,ListView, CreateView, DeleteView


# class vistaHome(TemplateView):
#     template_name = "libro/home.html"

class crearLibros(CreateView):
    template_name = 'crearLibro.html'
    model = Libros
    fields = ('__all__')
    success_url = reverse_lazy('libros_app:listarLibros')
    


class listarLibros(ListView):
    template_name = 'libros.html'
    model = Libros
    context_object_name = 'libros'


class actualizarLibro(UpdateView):
    template_name = "actualizarLibro.html"
    model = Libros
    fields=("__all__")
    success_url = reverse_lazy('libros_app:listarLibros')
    

class eliminarLibro(DeleteView):
    template_name = "eliminarLibro.html"
    model= Libros
    fields=("__all__")
    success_url = reverse_lazy('libros_app:listarLibros')