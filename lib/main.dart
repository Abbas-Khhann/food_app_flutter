import 'package:flutter/material.dart';
import 'package:food_app_flutter/screens/payment/payment.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/product/product_screen.dart';
import 'screens/product/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      initialRoute: '/payments',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/product': (context) => const ProductScreen(),
        '/details': (context) => const ProductDetails(),
        '/payments': (context) => const Payment()
      },
    );
  }
}