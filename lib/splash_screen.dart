import 'dart:async';
import 'package:facebook/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Lottie.asset('assets/lottie/Floral Animated Design.json')),
          Text('Facebook'),
          Text('Freelancer',
            textAlign: TextAlign.center,
            style: TextStyle( color: Colors.blue,
                fontSize: 20),

          ),

        ],
      ),
    );
  }
}
