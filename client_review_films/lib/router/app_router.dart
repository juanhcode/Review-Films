import 'package:client_review_films/models/menu_ruta.dart';
import 'package:client_review_films/screens/details_screen.dart';
import 'package:client_review_films/screens/home_screen.dart';
import 'package:client_review_films/screens/profile_screen.dart';
import 'package:client_review_films/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = '/home';
  final int index;
  const AppRoutes({required this.index});
  
  static final rutas = <MenuRuta>[
    //Aqui van las otras pantallas
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({
      "/home": (BuildContext context) => const HomeScreen(),
      "/details":(BuildContext context) => const DetailsScreen(),
    });
    for (final ruta in rutas) {
      appRoutes.addAll({
        ruta.route: (BuildContext context) => ruta.screen,
      });
    }
    return appRoutes;
  }

  Widget miPages() {
    List<Widget> pages = [
      const PrincipalScreen(),
      const ProfileScreen(),
    ];
    return pages[index];
  }
}
