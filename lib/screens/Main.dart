import 'package:flutter/material.dart';
import 'package:travelic/screens/Home.dart';
import 'package:travelic/screens/Favorite.dart';
import 'package:travelic/screens/History.dart';
import 'package:travelic/screens/Profile.dart';
import 'package:travelic/components.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  List pages = [
    Home(),
    Favorite(),
    History(),
    Profile(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: brown_dark,
        unselectedItemColor: brown_dark.withOpacity(0.2),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(
              label: "Favorite", icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label: "History", icon: Icon(Icons.history)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
