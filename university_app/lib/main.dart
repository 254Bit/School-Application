import 'package:flutter/material.dart';
import 'package:university_app/home_screen.dart';
import 'package:university_app/another_calendar.dart';
import 'package:university_app/school_calender.dart';
// import 'package:university_app/botton_navbar/nav_model.dart';
import 'package:university_app/side_menu.dart';
// import 'package:university_app/home_screen.dart';
// import 'package:university_app/screens/register.dart';
// import 'package:university_app/screens/library.dart';
import 'package:university_app/splash_screen.dart';
// import 'package:university_app/trial_side_bar.dart';
//import 'package:university_app/screens/home.dart';
// import 'package:university_app/splash_screen.dart';
// import 'package:university_app/bottom_navbar/bottomapp.dart';
// import 'package:university_app/home_screen.dart';

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
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 1, 18, 35),
          ),
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      home: const CalendarEvents(),
      //drawer: const SideBar(),

      debugShowCheckedModeBanner: false,
      //color: Color.fromARGB(255, 2, 52, 28),
    );
  }
}
