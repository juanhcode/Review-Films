from pyexpat import model
from django.db import models

# Create your models here.

class Usuario (models.Model):

    sexo = [
        ('M','Masculino'),
        ('F','Femenino'),
    ]

    nombre = models.CharField("Nombre", max_length=30)
    apellidos = models.CharField("Apellidos", max_length=50)
    nombre_usuario = models.CharField("Nombre Usuario", max_length=20)
    contrasenia = models.CharField("Contrasenia", max_length=100)
    sexo = models.CharField("Sexo", choices=sexo)
    correo_electronico = models.EmailField("Correo Electronico", max_length=50)
    foto_perfil = models.ImageField("Foto De Perfil", blank=True)
    edad = models.PositiveIntegerField("Edad")



class Resenia(models.Model):
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE)
    calificacion = models.IntegerField("Calificacion",max_length=1)
    comentario = models.TextField("Comentario")
