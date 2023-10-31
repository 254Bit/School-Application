import 'package:flutter/material.dart';
//import 'package:university_app/side_menu.dart';
import 'package:university_app/screens/library.dart';

class Library extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(Icons.menu_rounded),
              onPressed: () => Scaffold.of(context).openDrawer()
              //Scaffold.of(context).openDrawer();
              //scaffoldKey.currentState?.openDrawer();
              ),
        ),
        title: const Text('Library Corner'),
      ),
      body: Column(
        children: [
          // Drawer(
          //   child: ListView(padding: EdgeInsets.zero, children: [
          //     const DrawerHeader(
          //         decoration: BoxDecoration(color: Colors.amber),
          //         child: Text('Side Menu')),
          //     ListTile(
          //       leading: Icon(Icons.book),
          //       title: const Text('Library'),
          //       onTap: () {
          //         // Update the state of the app
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.logout_sharp),
          //       title: const Text('Log Out'),
          //       onTap: () {
          //         Navigator.of(context).push(
          //           MaterialPageRoute(builder: (context) => LogIn()),
          //         );
          //       },
          //     ),
          //   ]
          //       //
          //       ),
          // ),
          const Center(
            child: Card(
                child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Dart Quick Book'),
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Data Science'),
                ),
              ],
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                child: const Text('Rent a Book'),
                onPressed: () {},
              ),
              const SizedBox(width: 10),
              TextButton(
                child: const Text('Return a Book'),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
