import 'package:flutter/material.dart';
import 'pages/welcome_page.dart'; // Giriş sayfasını dahil ediyoruz

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Fridge Tracker',
      theme: ThemeData(
        primaryColor: Color(0xFFA5B68D),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFF9800)),
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
      ),
      home: WelcomePage(), // Giriş sayfasını ana sayfa olarak ayarlıyoruz
    );
  }
}
