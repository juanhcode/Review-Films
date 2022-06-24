import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                  onPressed: () {},
                  child: const Center(child: Text('Registrarme')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
