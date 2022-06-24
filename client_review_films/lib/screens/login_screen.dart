import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text('Bienvenido.',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                const Center(
                  child: Text(
                      'Por favor inicia sesion digitando tus credenciales en los campos de abajo.'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text("Correo Electronico"),
                TextFormField(
                  autofocus: false,
                  // validator: validateEmail,
                  // onSaved: (value) => _username = value,
                  decoration: const InputDecoration(
                    hintText: 'Digite el correo electronico',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Contraseña'),
                SizedBox(
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
                SizedBox(
                  height: 40.0,
                ),
                Text('Olvidaste tu contraseña?'),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 40), primary: Colors.orange),
                  onPressed: () {},
                  child: const Center(child: Text('Iniciar Sesion')),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Center(
                  child: Text('O inicia sesion con'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Ink.image(
                      image: const AssetImage('assets/google.png'),
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                const Center(
                  child: Text('¿No tienes una cuenta?'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 40), primary: Colors.orange),
                  onPressed: () {
                    Navigator.pushNamed(context, "/register");
                  },
                  child: const Center(child: Text('Registrate')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
