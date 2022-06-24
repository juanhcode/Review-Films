import 'package:client_review_films/router/app_router.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int ind = 0;
  _BottonNav? btnav;

  @override
  void initState() {
    btnav = _BottonNav(currentIndex: (i) {
      setState(() {
        ind = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppRoutes(index: ind).miPages(),
      bottomNavigationBar: btnav,
    );
  }
}

class _BottonNav extends StatefulWidget {
  final Function currentIndex;
  const _BottonNav({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<_BottonNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<_BottonNav> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
            widget.currentIndex(i);
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 25.0,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ]);
  }
}
