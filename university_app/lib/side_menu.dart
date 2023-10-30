import 'package:flutter/material.dart';
//import 'package:university_app/home_screen.dart';


class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: double.infinity,
      height: 400,
      padding: EdgeInsets.only(top: 10.0),
      child: Column
     // mainAxisAlignment: MainAxisAlignment.center,
      (children: [
        Container(
          margin:EdgeInsets.only(bottom:5),
          //height: 20,
          decoration: const BoxDecoration(
            shape:BoxShape.circle,
            image:DecorationImage(image: AssetImage('assets/Designer.jpg'),
            ),
          ),


        ),
        const UserAccountsDrawerHeader(accountName: Text('Scholar :-)',
        style: TextStyle(color:Colors.black, fontSize:20, fontWeight:FontWeight.bold),), 
        accountEmail: Text('scholar@peopleuniversity.co.ke',style: TextStyle(color:Colors.black, fontSize:10, fontWeight:FontWeight.bold),)
        ),
        // const CircleAvatar(
        //     //radius: 30.0,
        //     //backgroundImage: AssetImage('assets/Designer.jpg'),
        //     child: SizedBox(
        //     width: 20,
        //     height: 20,
        //     child: ClipOval(
        //       //child: Image.asset('assets/images/Designer.jpg'),
        //       ),
        //     ),
            
        //     ),
            
]
      )

    );
    
  }
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
