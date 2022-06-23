import 'package:client_review_films/providers/movies_provider.dart';
import 'package:client_review_films/router/app_router.dart';
import 'package:client_review_films/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MoviesProvider(),lazy:false)],
      child: const MyApp(),
    );
  }
}

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
