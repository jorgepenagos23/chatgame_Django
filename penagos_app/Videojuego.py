from django.db import models

class Videojuegos(models.Model):
    nombre = models.CharField(max_length=100)
    genero = models.CharField(max_length=50)
    plataforma = models.CharField(max_length=50)
    lanzamiento = models.DateField()
    descripcion = models.TextField()

    def __str__(self):
        return self.nombre