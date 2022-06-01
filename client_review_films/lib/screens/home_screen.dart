import 'package:client_review_films/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Review Films'),
          backgroundColor: Colors.white,
          actions: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                child: const CircleAvatar(
                  backgroundColor: AppTheme.primary,
                  child: Text('RF'),
                )),
          ]),
      body: const Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
