from apps.libro.models import Libros
from django.db import models


class Autores(models.Model):
    idAutor= models.IntegerField(primary_key=True)
    nombre= models.CharField(max_length=100)
    nacionalidad = models.CharField(max_length=50)
    idlibro = models.ForeignKey(Libros, on_delete = models.CASCADE)


    def __str__(self):
        return str(self.nombre)