from django.db import models
from apps.libro.models import Libros 
from apps.usuario.models import Usuarios

# Create your models here.
class Prestamos(models.Model):
    idPrestamo = models.IntegerField(primary_key = True)
    idlibro = models.ForeignKey(Libros, on_delete = models.CASCADE)
    idUsuario = models.ForeignKey(Usuarios, on_delete= models.CASCADE)
    fechaPrestamo = models.DateTimeField()
    fechaDevolucion = models.DateTimeField()


    def __str__(self):
        return str(self.idPrestamo)