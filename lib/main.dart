import 'package:ecommerce_admin/screens/screen.home.dart';
import 'package:ecommerce_admin/theme/input_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white30),
        inputDecorationTheme: InputTheme().theme(),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
