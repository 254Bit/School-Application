// 15 Widget Libraries
//Container, Align, Padding, Text, TextField, Center, Column, Row, TextAlign, Scaffold, Icon, Button, Image, Card, Navigator

import 'package:flutter/material.dart';
import 'package:university_app/screens/register.dart';

class LogIn extends StatefulWidget {
  // static const mySnackBar = SnackBar(
  //   content: Text('Login Successful'),
  //   backgroundColor: Colors.amber,
  // );
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('University of The People'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              Icons.person,
              color: Colors.amber,
              size: 90.0,
            ),
            const SizedBox(
              height: 80,
            ),
            const SizedBox(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.people),
                  hintText: 'name@peopleuniversity.co.ke',
                  border: OutlineInputBorder(),
                  labelText: 'Enter Username',
                ),
              ),
            ),
            const SizedBox(
              width: 300,
              height: 100,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Enter Your Password',
                  //contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your Password',
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text(
                'LogIn',
                style: TextStyle(color: Colors.amber),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Register(),
                ));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Login Successful'),
                    backgroundColor: Colors.amber,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 25,
              width: 40,
            ),
            const Text(
              'Dont have an account?',
              style: TextStyle(color: Colors.amber),
            )
          ]),
        ),
      ),
    );
  }
}
