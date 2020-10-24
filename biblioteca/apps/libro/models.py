from django.db import models

# Create your models here.
class Libros(models.Model):
    idLibro = models.IntegerField(primary_key = True)
    codigo = models.IntegerField()
    titulo = models.CharField(max_length = 100)
    isbn = models.CharField(max_length=30)
    editorial = models.CharField(max_length=60)
    numPags = models.IntegerField()


    def __str__(self):
        return str(self.idLibro)