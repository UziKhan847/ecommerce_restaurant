// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzi_ecommerce_restaurant/models/cart.dart';
import './pages/cart_page.dart';
import './pages/shop_page.dart';
import './themes/light_mode.dart';
import './pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Cart(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        theme: lightMode,
        routes: {
          '/intro_page.dart': (context) => IntroPage(),
          '/shop_page.dart': (context) => ShopPage(),
          '/cart_page.dart': (context) => CartPage(),
        },
      ),
    );
  }
}
