import 'package:client_review_films/models/menu_ruta.dart';
import 'package:client_review_films/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = '/home';
  
  static final rutas = <MenuRuta>[
    //Aqui van las otras pantallas
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({
      "/home": (BuildContext context) => const HomeScreen(),
    });
    for (final ruta in rutas) {
      appRoutes.addAll({
        ruta.route: (BuildContext context) => ruta.screen,
      });
    }
    return appRoutes;
  }
}
