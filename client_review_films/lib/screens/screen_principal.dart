import 'package:client_review_films/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: const [
          CardSwiper(), //Peliculas seccion principal
          MovieSlider(), //Listado horizontal de peliculas
          MovieSlider(),
          MovieSlider(),
          MovieSlider(),
        ],
      ),
    ));
  }
}
