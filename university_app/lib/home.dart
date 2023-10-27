import 'package:flutter/material.dart';
import 'package:university_app/screens/log_in.dart';
import 'package:university_app/screens/library.dart';

class HomeScreen extends StatelessWidget {
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
        title: const Text('Welcome Home'),
      ),
      //drawer: NavigationDrawer(),
      body: 
      Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text('Side Menu')),
          ListTile(
            leading: Icon(Icons.book),
            title: const Text('Library'),
            onTap: () {
              // Update the state of the app
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_sharp),
            title: const Text('Log Out'),
            onTap: () {
              Navigator.of(context).pop(MaterialPageRoute(builder:(context)=>LogIn()),);
            },
          ),
          
        ]

            //
            ),
      ),
     
          
    );
  }
}
