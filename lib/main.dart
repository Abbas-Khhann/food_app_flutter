import 'package:flutter/material.dart';
import 'package:food_app_flutter/screens/payment/payment.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/product/product_screen.dart';
import 'screens/product/product_details.dart';
import 'screens/popup/popup.dart';
import 'screens/profile/profile_screen.dart';

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
      initialRoute: '/profile',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/product': (context) => const ProductScreen(),
        '/details': (context) => const ProductDetails(),
        '/payments': (context) => const Payment(),
        '/popup' : (context) => const PopUp(),
        '/profile' : (context) => const ProfileScreen()
      },
    );
  }
}