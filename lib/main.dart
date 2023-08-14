import 'package:flutter/material.dart';
import 'package:project_iti/login/login.dart';
import 'package:project_iti/login/sing_up.dart';
import 'package:project_iti/login/welcome.dart';
import 'package:project_iti/models/description.dart';
import 'package:project_iti/models/home_screen.dart';
import 'package:project_iti/models/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),

      routes: {
        'login' : (context) => LoginScreen(),
       'sing_up' : (context) => Sing_upScreen(),
       // 'details' : (context) =>  Description,
      },
      );


  }
}

