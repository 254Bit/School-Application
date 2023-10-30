// import 'package:flutter/material.dart';
// import 'package:university_app/screens/log_in.dart';

// class SideBar extends StatelessWidget {
//   const SideBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       width: MediaQuery.of(context).size.width * 0.50,
//       child: Container(
//         color: Colors.amber,
//         child: ListView(padding: EdgeInsets.zero, children: [
//         const DrawerHeader(
//             decoration: BoxDecoration(color: Colors.amber),
//             child: Text('Side Menu')),
//         ListTile(
//           leading: const Icon(Icons.book),
//           title: const Text('Library'),
//           onTap: () {
//             // Update the state of the app
//             Navigator.pop(context);
//           },
//         ),
//         ListTile(
//           leading: const Icon(Icons.logout_sharp),
//           title: const Text('Log Out'),
//           onTap: () {
//             Navigator.of(context).pop(MaterialPageRoute(builder:(context)=>LogIn()),);
//           },
//         ),
        
//       ]

//         ),

//       ),
//     );
//   }
// }
