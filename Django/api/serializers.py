from django.contrib.auth.hashers import make_password
from rest_framework import serializers

from .models import Usuario, Resenia

class UsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = (
            'nombre',
            'apellidos',
            'nombre_usuario',
            'password',
            'sexo',
            'correo_electronico',
            'foto_perfil',
            'edad',
        )
        #optional_fields = ['foto_perfil',]
        extra_kwargs = {'foto_perfil': {"required": False, "allow_null": True}}

    def create(self,validated_data):
        usuario = Usuario.objects.create(
            nombre = validated_data['nombre'],
            apellidos = validated_data['apellidos'],
            nombre_usuario = validated_data['nombre_usuario'],
            password = make_password(validated_data['password']),
            sexo = validated_data['sexo'],
            correo_electronico = validated_data['correo_electronico'],
            foto_perfil = validated_data['foto_perfil'],
            edad = validated_data['edad'],
        )
        return usuario


class ReseniaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Resenia
        fields = ('__all__')