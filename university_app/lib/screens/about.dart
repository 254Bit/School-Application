import 'package:flutter/material.dart';
// import 'package:university_app/home_screen.dart';
// import 'package:university_app/side_menu.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child:
       Text("The People's University"),
      ),
    );
  }
}
