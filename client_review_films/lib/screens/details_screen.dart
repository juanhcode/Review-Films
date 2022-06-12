import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Todo: Cambiar por una instancia de movie
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomAppBar(),
      ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.orange,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Container(
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              color: Colors.black45,
              child: const Text(
                'movie.title',
                style: TextStyle(fontSize: 16),
              )),
          background: const FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: AssetImage('assets/loading.gif'),
            fit: BoxFit.cover,
          )),
    );
  }
}
