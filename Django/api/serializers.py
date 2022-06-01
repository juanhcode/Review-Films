from pyexpat import model
from rest_framework import serializers

from .models import Usuario, Resenia

class UsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = ('__all__')


class ReseniaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Resenia
        fields = ('__all__')