import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFF939B),
              Color(0xFFEF2A39),
            ],
          ),
        ),
        child: Stack(
          children: [

            Positioned(
              top: 300,
              left: 0,
              right: 0,
              child: const Text(
                "Foodgo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              left: -20,
              child: Image.asset(
                "assets/images/burger1.png",
                width: 160,
              ),
            ),

            Positioned(
              bottom: 0,
              left: 80,
              child: Image.asset(
                "assets/images/burger2.png",
                width: 160,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


