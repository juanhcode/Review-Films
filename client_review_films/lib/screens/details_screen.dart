import 'package:client_review_films/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Todo: Cambiar por una instancia de movie
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const _CustomAppBar(),
        SliverList(
            delegate: SliverChildListDelegate([
          const _PosterAndTitle(),
          const _OverView(),
          const _OverView(),
          const _OverView(),
          const CastingCards(),
        ])),
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
          titlePadding: const EdgeInsets.all(0),
          title: Container(
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              color: Colors.black45,
              padding: const EdgeInsets.only(bottom: 10),
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

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
            )),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'movie.title',
              style: textTheme.headline5,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text('movie.originalTitle',
                style: textTheme.subtitle1, overflow: TextOverflow.ellipsis),
            Row(
              children: [
                const Icon(Icons.star_outline, size: 15, color: Colors.yellow),
                const SizedBox(width: 5),
                Text('movie.voteAverage', style: textTheme.caption)
              ],
            )
          ],
        )
      ]),
    );
  }
}

class _OverView extends StatelessWidget {
  const _OverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text(
            'Sit laborum cupidatat adipisicing nisi eiusmod excepteur non sunt nulla duis velit. Nulla exercitation exercitation occaecat sit veniam pariatur duis aliqua ex amet ea occaecat. Velit voluptate tempor aute consectetur Lorem in aliquip ut dolore ipsum dolor duis labore irure. Irure reprehenderit consectetur ipsum mollit qui veniam eu reprehenderit culpa et irure excepteur esse sunt. Deserunt aliquip occaecat veniam et. Nostrud laborum pariatur do id laborum consectetur ipsum id proident proident veniam aliquip sint.',
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.subtitle1));
  }
}
