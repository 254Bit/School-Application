import 'package:flutter/material.dart';
import 'package:university_app/dashboard.dart';
import 'package:university_app/fees.dart';
import 'package:university_app/kcse.dart';
import 'package:university_app/another_calendar.dart';
import 'package:university_app/screens/about.dart';
import 'package:university_app/screens/events.dart';
import 'package:university_app/home_screen.dart';
import 'package:university_app/screens/log_in.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = const DashBoardPage();
    } else if (currentPage == DrawerSections.money) {
      container = const Fees();
    } else if (currentPage == DrawerSections.calender) {
      container = const SchoolCalender();
    } else if (currentPage == DrawerSections.school) {
      container = const NationalPerformance();
    } else if (currentPage == DrawerSections.logout) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LogIn(),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 7, 226),
        title: const Text("The People's University",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0)),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [],),
      body: const Center(
        child: Text(
            'Home Page, shall have images, animation, etc etc. pieces of information'),
      ),

      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                  accountName: Text(
                    'Scholar :-)',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0),
                  ),
                  accountEmail: Text(
                    'scholar@peopleuniversity.co.ke',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0),
                  )),
              myDrawerList(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     a
      //   ]),
    );
  }

  Widget myDrawerList() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          //menuItem(),
          menuItem(1, 'Student Dashboard', Icons.dashboard,
              currentPage == DrawerSections.dashboard ? true : false),
          const SizedBox(height: 10),
          menuItem(2, 'Fees Progress', Icons.money,
              currentPage == DrawerSections.money ? true : false),
          const SizedBox(height: 10),
          menuItem(3, 'School Calender', Icons.calendar_view_day,
              currentPage == DrawerSections.calender ? true : false),
          const SizedBox(height: 10),
          menuItem(4, 'KCSE', Icons.school_outlined,
              currentPage == DrawerSections.school ? true : false),
          const SizedBox(height: 10),
          menuItem(5, 'Log Out', Icons.logout,
              currentPage == DrawerSections.logout ? true : false),
          const SizedBox(height: 10),
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
              currentPage == DrawerSections.money;
            } else if (id == 3) {
              currentPage == DrawerSections.calender;
            } else if (id == 4) {
              currentPage == DrawerSections.school;
            } else if (id == 5) {
              currentPage == DrawerSections.logout;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 4,
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
  money,
  calender,
  school,
  logout,
}

// class NavDrawer extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.50,
//       child: Drawer(
//         child: Container(
//           color: Colors.amber,
//           child: ListView(padding: EdgeInsets.zero, children: [
//           const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.amber),
//               child: Text('Side Menu')),
//           ListTile(
//             leading: const Icon(Icons.book),
//             title: const Text('Library'),
//             onTap: () {
//               // Update the state of the app
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.logout_sharp),
//             title: const Text('Log Out'),
//             onTap: () {
//               Navigator.of(context).pop(MaterialPageRoute(builder:(context)=>LogIn()),);
//             },
//           ),

//         ]

//           ),

//         ),
//       ),
//     );
//   }
// }
