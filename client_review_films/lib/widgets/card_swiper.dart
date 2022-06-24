import 'package:card_swiper/card_swiper.dart';
import 'package:client_review_films/models/movie.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  final List<Movie> movies;
  const CardSwiper({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*Para tomar la pantalla*/
    final tamanio =
        MediaQuery.of(context).size; //Obtengo el tamaño de la pantalla

    if (movies.length == 0) {
      return Container(
          width: double.infinity,
          height: tamanio.height * 0.5,
          child: const Center(
            child: CircularProgressIndicator(),
          ));
    }

    return SizedBox(
        width: double.infinity,
        height: tamanio.height *
            0.5, //Mitad de la pantalla para peliculas principales
        child: Swiper(
          itemCount: movies.length,
          layout: SwiperLayout.STACK,
          itemWidth: tamanio.width * 0.6,
          itemHeight: tamanio.height * 0.4,
          itemBuilder: (BuildContext context, int i) {
            final movie = movies[i];
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/details',
                  arguments: movie),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: const AssetImage('assets/no-image.jpg'),
                  image: NetworkImage(movie.fullPosterImg),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));
  }
}
