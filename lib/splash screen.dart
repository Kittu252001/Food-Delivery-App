import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/homepage.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void Function()? get callback => null;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pop();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Homepage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          colors: [
            const Color(0xFF007991),
            const Color(0xFF78ffd6),
            // const Color(0xFFFDB99B),
          ],
        )),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 120.0),
                ),
                Text(
                  ' Welcome\n To Keus Food Delivery App',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 130.0),
                ),
                LottieBuilder.asset('images/2.json'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
