// 15 Widget Libraries
//Container, Align, Padding, Text, TextField, Center, Column, Row, TextAlign, Scaffold, Icon, Button, Image, Card, Navigator

import 'package:flutter/material.dart';
import 'package:university_app/screens/log_in.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register With Us'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Icon(
            Icons.abc_outlined,
            color: Color.fromARGB(255, 6, 1, 41),
            size: 24.0,
          ),
          
           const SizedBox(
              height: 100, width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your Email Address',
                ),
              ),
            ),
          
           const SizedBox(
              height: 100, width: 300,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your Full Name'),
              ),
            ),
          
      
          const SizedBox(
              height: 100, width: 300,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Your Phone Number'),
              ),
            ),
          
      
           const SizedBox(
              height: 100, width: 300,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Create Your Password'),
              ),
            ),
          
            
            const SizedBox(
              height: 100, width: 300,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password'),
              ),
            ),
          
          ElevatedButton(
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.amber),
                ),
                onPressed: () {},
              ),
      
                 const SizedBox(width: 300),
                 const  Text('Have an account? Sign in instead',
                 style: TextStyle(color:Colors.amber),
                 )
           
            
          ], 
        ),
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
