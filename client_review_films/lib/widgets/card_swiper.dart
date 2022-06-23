import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*Para tomar la pantalla*/
    final tamanio =
        MediaQuery.of(context).size; //Obtengo el tamaño de la pantalla
    return SizedBox(
        width: double.infinity,
        height: tamanio.height *
            0.5, //Mitad de la pantalla para peliculas principales
        child: Swiper(
          itemCount: 10,
          layout: SwiperLayout.STACK,
          itemWidth: tamanio.width * 0.6,
          itemHeight: tamanio.height * 0.4,
          itemBuilder: (BuildContext context, int i) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/details',
                  arguments: 'movie-instance'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'),
                  image: NetworkImage('https://via.placeholder.com/300x400'),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));
  }
}
