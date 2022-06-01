from django.shortcuts import render

from rest_framework.generics import ListAPIView, CreateAPIView, DestroyAPIView, RetrieveUpdateAPIView

from api.models import Resenia, Usuario

from .serializers import UsuarioSerializer, ReseniaSerializer
# Create your views here.

# ===================================== API DE USUARIOS ==================================================

class ListUsuariosView(ListAPIView):

    queryset = Usuario.objects.all()
    serializer_class = UsuarioSerializer


class CreateUsuarioView(CreateAPIView):

    serializer_class = UsuarioSerializer


class DeleteUsuarioView(DestroyAPIView):

    serializer_class = UsuarioSerializer
    queryset = Usuario.objects.all()


class UpdateUsuarioView(RetrieveUpdateAPIView):

    serializer_class = UsuarioSerializer
    queryset = Usuario.objects.all()

# ===================================== FIN API DE USUARIOS ==================================================

# ===================================== API DE COMENTARIOS ==================================================

class ListReseniaView(ListAPIView):

    queryset = Resenia.objects.all()
    serializer_class = ReseniaSerializer


class CreateReseniaView(CreateAPIView):

    serializer_class = ReseniaSerializer


class UpdateReseniaView(RetrieveUpdateAPIView):

    serializer_class = ReseniaSerializer
    queryset = Resenia.objects.all()


class DeleteReseniaView(DestroyAPIView):

    serializer_class = ReseniaSerializer
    queryset = Resenia.objects.all()


# ===================================== FIN API DE USUARIOS ==================================================