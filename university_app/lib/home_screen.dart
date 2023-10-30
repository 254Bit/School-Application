import 'package:flutter/material.dart';
import 'package:university_app/screens/library.dart';
import 'package:university_app/side_menu.dart';
import 'package:university_app/screens/about.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.library) {
      container = Library();
    } else if (currentPage == DrawerSections.about) {
      container = const About();
    }
    // } else if {
    //   currentPage == DrawerSections.library;
    // }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Welcome Home'),
      ),
      body:
      Container(
          child: const Center(
        child: Text('Home Page, shall have images, animation, etc etc. small information'),
      ),
      ),

      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const MyHeaderDrawer(),
                myDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          //menuItem(),
          menuItem(1, 'DashBoard', Icons.dashboard,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, 'Library', Icons.library_books,
              currentPage == DrawerSections.library ? true : false),
          menuItem(3, 'About', Icons.info_rounded,
              currentPage == DrawerSections.about ? true : false),
          menuItem(4, 'Settings', Icons.settings,
              currentPage == DrawerSections.settings ? true : false),
          //  menuItem( 4, 'Log Out', Icons.logout,
          // currentPage == DrawerSections.logout ? true: false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String heading, IconData icon, bool select) {
    return Material(
      //color: selected Colors.grey : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage == DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage == DrawerSections.library;
            } else if (id == 3) {
              currentPage == DrawerSections.about;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              const Expanded(
                child: Icon(
                  Icons.abc,
                  //size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                //flex: 1,
                child: Text(
                  heading,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  library,
  about,
  settings,
}
