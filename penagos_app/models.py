from django.db import models

class Palabra(models.Model):
    palabra = models.CharField(max_length=100)
    respuesta = models.CharField(max_length=100, default='valor predeterminado')


    def __str__(self):
        return self.palabra

class Videojuegos(models.Model):
    nombre = models.CharField(max_length=100)
    genero = models.CharField(max_length=50)
    plataforma = models.CharField(max_length=50)
    lanzamiento = models.DateField()
    descripcion = models.TextField()

    def __str__(self):
        return self.nombre
    

class Fortnite(models.Model):
    nombre = models.CharField(max_length=100)
    genero = models.CharField(max_length=100)
    plataforma = models.CharField(max_length=100)
    lanzamiento = models.DateField()
    descripcion = models.TextField()

    def __str__(self):
        return self.nombre
    
class ResidentEvil(models.Model):
    nombre = models.CharField(max_length=100)
    genero = models.CharField(max_length=100)
    plataforma = models.CharField(max_length=100)
    lanzamiento = models.DateField()
    descripcion = models.TextField()

    def __str__(self):
        return self.nombre   