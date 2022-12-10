import 'package:flutter/material.dart';
import 'package:aiolos_assignment/screens/loginscreen.dart';
import 'package:aiolos_assignment/screens/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        ProductScreen.idScreen: (context) => const ProductScreen(),
      },
    );
  }
}
