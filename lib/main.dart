import 'package:flutter/material.dart';
import 'package:lottery_app/home_screen.dart';
//import 'package:lottery_app/screen_redirect.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WhatsApp UI',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:const HomeScreen(),
    );
  }
}