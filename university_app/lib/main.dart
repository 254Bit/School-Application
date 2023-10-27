import 'package:flutter/material.dart';
import 'package:university_app/home.dart';
import 'package:university_app/screens/log_in.dart';
import 'package:university_app/screens/register.dart';
import 'package:university_app/screens/library.dart';
//import 'package:university_app/screens/home.dart';

void main() {
  runApp(
      const MyApp()); // runApp functions run the application rendering the app, declared in class MyApp extends StatelessWidget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),

      debugShowCheckedModeBanner: false,
      //color: Color.fromARGB(255, 2, 52, 28),
    );
  }
}
