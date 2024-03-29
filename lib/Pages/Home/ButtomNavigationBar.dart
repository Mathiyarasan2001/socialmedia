import 'package:flutter/material.dart';
import 'package:toktok/Pages/Home/HomePage.dart';
import 'package:toktok/Pages/Home/Profile.dart';
import 'package:toktok/Pages/Home/Reels.dart';
import 'package:toktok/Pages/Home/Search.dart';

class Buttomnavigation extends StatefulWidget {
  const Buttomnavigation({Key? key}) : super(key: key);

  @override
  State<Buttomnavigation> createState() => _ButtomnavigationState();
}

class _ButtomnavigationState extends State<Buttomnavigation> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    ReelsPage(),
    ProfilePage(),
  ];

  void onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 59, 62, 65),
        currentIndex: currentIndex,
        onTap: onTab,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.video_library),
              label: "Reels"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.person),
              label: "Profile"),
        ],
      ),
    );
  }
}
