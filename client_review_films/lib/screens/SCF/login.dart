import 'package:flutter/material.dart';

void main() => runApp(const IniciarSesionApp());

class IniciarSesionApp extends StatelessWidget {
  const IniciarSesionApp({Key? key}) : super(key: key);

  static const String _title = 'Iniciar Sesion';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title), backgroundColor: Colors.transparent, elevation: 0,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),),
        body: const Login(),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  // String _username, _password, _confirmPassword;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(child: Text('Bienvenido.',style: TextStyle(fontFamily: 'Inter', color: Colors.black,
                fontSize: 32, fontWeight: FontWeight.bold)
                  ),
                ),
                SizedBox(height: 20.0,),
                const Center(
                  child: Text('Por favor inicia sesion digitando tus credenciales en los campos de abajo.'),
                ),
                SizedBox(height: 40.0,),
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
                SizedBox(height: 20.0,),
                Text('Contraseña'),
                SizedBox(height: 5.0,),
                TextFormField(
                  autofocus: false,
                  // validator: validateEmail,
                  // onSaved: (value) => _username = value,
                  decoration: const InputDecoration(
                  hintText: 'Digite la contraseña',
                  prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 40.0,),
                Text('Olvidaste tu contraseña?'),
                SizedBox(height: 10.0,),
                ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: const Size(100, 40),primary: Colors.orange ),
                onPressed: () {},
                child: const Center(child: Text('Iniciar Sesion')),
                ),
                const SizedBox(height: 20.0,),
                const Center(
                  child: Text('O inicia sesion con'),
                ),
                const SizedBox(height: 20.0,),
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
                  const SizedBox(height: 40.0,),
                  const Center(
                  child: Text('¿No tienes una cuenta?'),
                ),
                SizedBox(height: 10.0,),
                ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: const Size(100, 40),primary: Colors.orange ),
                onPressed: () {},
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

