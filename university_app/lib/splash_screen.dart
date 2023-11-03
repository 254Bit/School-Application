import 'package:flutter/material.dart';
import 'package:university_app/home_screen.dart';
import 'package:university_app/screens/log_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   //  TODO: implement setState
  //   super.initState();
  // }

 

  @override
  Widget build(BuildContext context) {
    // Timer(const Duration(seconds: 5), () {
    //   Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
    // });
       Future.delayed(const Duration(seconds: 7), () {
      Navigator.of(context).push(MaterialPageRoute(builder:(context) => const LogIn(),
      )
      );
  });
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Positioned.fill(child: 
        Image.asset('assets/images/uop_1.png',
        fit: BoxFit.fill,)
        
        ),
        // const SizedBox(
        //   height: 10,
        // ),
        const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      ],
    ),
    ),
    );
  }
}
