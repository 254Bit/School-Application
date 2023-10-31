import 'package:flutter/material.dart';
import 'package:university_app/home_screen.dart';

//import 'package:university_app/home_screen.dart';

class NavModel {
  final Widget page;
  final GlobalKey<NavigatorState> navKey;

  NavModel({required this.page, required this.navKey});
}
