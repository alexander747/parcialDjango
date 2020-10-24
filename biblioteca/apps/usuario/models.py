from django.db import models

# Create your models here.

class Usuarios(models.Model):
    idUsuario = models.IntegerField(primary_key=True)
    numUsuario= models.IntegerField()
    nif= models.CharField(max_length=20)
    nombre=models.CharField(max_length=100)
    direccion = models.CharField(max_length=255)
    telefono = models.CharField(max_length=20)

    def __str__ (self):
        return str(self.nombre)