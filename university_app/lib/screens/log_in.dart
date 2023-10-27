// 15 Widget Libraries
//Container, Align, Padding, Text, TextField, Center, Column, Row, TextAlign, Scaffold, Icon, Button, Image, Card, Navigator

import 'package:flutter/material.dart';
import 'package:university_app/screens/register.dart';
import 'package:university_app/home.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('University of The People'),
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
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              width: 250,
              height: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Username',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
              child: SizedBox(
                 width: 250,
                 height: 200,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      //contentPadding: EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(),
                      labelText: 'Enter Your Password'),
                ),
              ),
            
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: ElevatedButton(
                child: Text(
                  'LogIn',
                  style: TextStyle(color: Colors.amber),
                ),
              
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Register(),
                ));
              },
            ),
          ),
          const SizedBox(height: 25, width: 40,),
          const Text(
            'Dont have an account?',
            style: TextStyle(color: Colors.amber),
          )
        ]
      ),
    );
  }
}
