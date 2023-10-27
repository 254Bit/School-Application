// 15 Widget Libraries
//Container, Align, Padding, Text, TextField, Center, Column, Row, TextAlign, Scaffold, Icon, Button, Image, Card, Navigator

import 'package:flutter/material.dart';
import 'package:university_app/screens/log_in.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register With Us'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        const Icon(
          Icons.abc_outlined,
          color: Colors.amber,
          size: 24.0,
        ),
    
         const Padding(
          padding: EdgeInsets.all(25.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Your Email Address',
            ),
          ),
        ),
         const Padding(
          padding: EdgeInsets.all(25.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Enter Your Surname',
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(),
                labelText: 'Enter Your Surname'),
          ),
        ),

        const Padding(
          padding: EdgeInsets.all(25.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Enter Your First Name',
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(),
                labelText: 'Enter Your First Name'),
          ),
        ),

         const Padding(
          padding: EdgeInsets.all(25.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Create Your Password',
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(),
                labelText: 'Create Your Password'),
          ),
        ),
          const Padding(
          padding: EdgeInsets.all(25.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Confirm Password',
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(),
                labelText: 'Confirm Password'),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(.0),
            child: ElevatedButton(
              child: Text(
                'Register',
                style: TextStyle(color: Colors.amber),
              ),
              onPressed: () {},
            ),
          ),

               SizedBox(height:10),
               const  Text('Have an account? Sign in instead',
               style: TextStyle(color:Colors.amber),
               )
         
          
        ], 
      ),
    );

    //     ),//Column
    //   ), //SingleChildScrollView
    // );// Scaffold
  }
}

// class FloatingPoint extends StatelessWidget {
//   const FloatingPoint({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(useMaterial3: true),
//       home: const FloatingPoint(),
//     );
//   }
// }
