import 'package:flutter/material.dart';
import 'package:flutter_1/pages/customer_home.dart';
import 'package:flutter_1/pages/supplier_home_screen.dart';
import 'package:flutter_1/pages/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome_screen',
      routes: {
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/customer_home': (context) => const CustomerHome(),
        '/supplier_home': (context) => const SupplierHomeScreen()
      },
    );
  }
}
