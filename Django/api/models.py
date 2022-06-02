from distutils.command.upload import upload
from email.policy import default
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
    nombre_usuario = models.CharField("Nombre Usuario", max_length=20, unique=True)
    password = models.CharField("Contrasenia", max_length=100)
    sexo = models.CharField("Sexo", choices=sexo, max_length=1)
    correo_electronico = models.EmailField("Correo Electronico", max_length=50, unique=True)
    foto_perfil = models.ImageField("Foto De Perfil", default='media/foto_perfil/default.jpeg', upload_to='foto_perfil/')
    edad = models.PositiveIntegerField("Edad")

    def __str__(self):
        return str(self.id) + ' ' + self.nombre + ' ' + self.apellidos



class Resenia(models.Model):
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE)
    calificacion = models.IntegerField("Calificacion")
    comentario = models.TextField("Comentario")

    def __str__(self):
        return str(self.id) + ' - ' + str(self.usuario)
