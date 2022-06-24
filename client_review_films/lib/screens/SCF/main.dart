import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Registrate';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title), backgroundColor: Colors.transparent, elevation: 0,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),),
        body: const Register(),
      ),
    );
  }
}

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
                const Text('ReviewFilms',style: TextStyle(fontFamily: 'Inter', color: Colors.orange,
                fontSize: 32, fontWeight: FontWeight.bold)),
                SizedBox(height: 15.0,),
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
                Text('Nombre'),
                SizedBox(height: 5.0,),
                TextFormField(
                  autofocus: false,
                  // validator: validateEmail,
                  // onSaved: (value) => _username = value,
                  decoration: const InputDecoration(
                  hintText: 'Digite su nombre',
                  prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 20.0,),
                Text('Apellidos'),
                SizedBox(height: 5.0,),
                TextFormField(
                  autofocus: false,
                  // validator: validateEmail,
                  // onSaved: (value) => _username = value,
                  decoration: const InputDecoration(
                  hintText: 'Digite sus apellidos',
                  prefixIcon: Icon(Icons.person),
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
                SizedBox(height: 20.0,),
                Text('Confirmacion de Contraseña'),
                SizedBox(height: 5.0,),
                TextFormField(
                  autofocus: false,
                  // validator: validateEmail,
                  // onSaved: (value) => _username = value,
                  decoration: const InputDecoration(
                  hintText: 'Digite nuevamente la contraseña',
                  prefixIcon: Icon(Icons.lock
                  ),
                  ),
                ),
                SizedBox(height: 40.0,),
                ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: const Size(100, 40),primary: Colors.orange ),
                onPressed: () {},
                child: const Center(child: const Text('Registrarme')),
                
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

