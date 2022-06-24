import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: const Image(
                      image: AssetImage('assets/Moon_Knight.webp'),
                      width: 500,
                      height: 500,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                const Center(
                  child: Text('Moon Knight.',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 10.0),
                const Center(
                  child: Text(
                      'Un trabajador de un museo que lucha contra un trastorno de identidad disociativo, recibe los poderes de un dios egipcio de la luna. Pronto descubre que estos poderes pueden ser tanto una bendición como una maldición.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.black,
                      )),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 40), primary: Colors.orange),
                  onPressed: () {},
                  child: const Center(child: const Text('Iniciar Sesion')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
