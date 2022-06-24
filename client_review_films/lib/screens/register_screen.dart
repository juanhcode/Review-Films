import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var emailController = TextEditingController();
  var nombreController = TextEditingController();
  var apellidoController = TextEditingController();
  var contraseController = TextEditingController();
  var confirmarPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('ReviewFilms',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.orange,
                        fontSize: 32,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 15.0,
                ),
                const Text("Correo Electronico"),
                TextFormField(
                  controller: emailController,
                  autofocus: false,
                  // validator: validateEmail,
                  // onSaved: (value) => _username = value,
                  decoration: const InputDecoration(
                    hintText: 'Digite el correo electronico',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text('Nombre'),
                const SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: nombreController,
                  autofocus: false,
                  // validator: validateEmail,
                  // onSaved: (value) => _username = value,
                  decoration: const InputDecoration(
                    hintText: 'Digite su nombre',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text('Apellidos'),
                const SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: apellidoController,
                  autofocus: false,
                  // validator: validateEmail,
                  // onSaved: (value) => _username = value,
                  decoration: const InputDecoration(
                    hintText: 'Digite sus apellidos',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text('Contraseña'),
                const SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: contraseController,
                  autofocus: false,
                  // validator: validateEmail,
                  // onSaved: (value) => _username = value,
                  decoration: const InputDecoration(
                    hintText: 'Digite la contraseña',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text('Confirmacion de Contraseña'),
                const SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  controller: confirmarPassController,
                  autofocus: false,
                  // validator: validateEmail,
                  // onSaved: (value) => _username = value,
                  decoration: const InputDecoration(
                    hintText: 'Digite nuevamente la contraseña',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 40), primary: Colors.orange),
                  onPressed: () {
                    register();
                  },
                  child: const Center(child: Text('Registrarme')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> register() async {
    if (emailController.text.isNotEmpty &&
        nombreController.text.isNotEmpty &&
        apellidoController.text.isNotEmpty &&
        contraseController.text.isNotEmpty &&
        confirmarPassController.text.isNotEmpty) {
      if (confirmarPassController.text.toString() ==
          confirmarPassController.text.toString()) {
        var response = await http.post(
            Uri.parse(
                'https://django-flutter-rf.herokuapp.com/api/create/user/'),
            body: ({
              "nombre": nombreController.text.toString(),
              "apellidos": apellidoController.text.toString(),
              "nombre_usuario": "",
              "password": contraseController.text.toString(),
              "sexo": "M",
              "correo_electronico": emailController.text.toString(),
              "foto_perfil": "",
              "edad": 1
            }));
        if (response.statusCode == 200) {
          print('ya puedo ir a la pagina principal');
        }
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Datos invalidos')));
    }
  }
}
