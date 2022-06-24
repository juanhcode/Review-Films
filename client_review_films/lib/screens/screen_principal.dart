import 'package:client_review_films/providers/movies_provider.dart';
import 'package:client_review_films/search/search_delegate.dart';
import 'package:client_review_films/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    print(moviesProvider.onDisplayMovies);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Review Filmss'),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: MovieSearchDelegate());
                },
                icon: const Icon(Icons.search_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(
                  movies: moviesProvider
                      .onDisplayMovies), //Peliculas seccion principal
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Populares',
                onNextPage: () => moviesProvider.getPopularMovies(),
              ), //Listado horizontal de peliculas
            ],
          ),
        ));
  }
}
