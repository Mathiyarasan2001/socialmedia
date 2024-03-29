import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toktok/Pages/Home/ButtomNavigationBar.dart';
import 'package:toktok/Pages/Home/HomePage.dart'; // Make sure to import the correct HomePage class

class DonePage extends StatefulWidget {
  const DonePage({Key? key}) : super(key: key);

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (_) =>
                Buttomnavigation()), // Make sure HomePage class exists
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  colors: [
                Color.fromARGB(255, 13, 161, 57),
                Color.fromARGB(255, 7, 189, 209),
              ])),
          child: Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Lottie.asset(
                "assets/Lotttie/Done.json",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
