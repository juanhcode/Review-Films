import 'package:client_review_films/router/app_router.dart';
import 'package:client_review_films/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Review Films',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getRoutes(),
      //Tema
      theme: AppTheme.lighTheme,
    );
  }
}
