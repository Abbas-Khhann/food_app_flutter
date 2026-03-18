import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_app_flutter/controllers/food_controller.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/product/product_screen.dart';
import 'screens/product/product_details.dart';
import 'screens/popup/popup.dart';
import 'screens/profile/profile_screen.dart';

void main() {
  Get.put(FoodController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      initialRoute: '/home',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/product': (context) => const ProductScreen(),
        '/details': (context) => const ProductDetails(),
        '/popup': (context) => const PopUp(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}