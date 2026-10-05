

import 'package:facebook/buttons_class.dart';
import 'package:facebook/friday_task.dart';
import 'package:facebook/grid_screen.dart';
import 'package:facebook/list_screen.dart';
import 'package:facebook/login_page.dart';
import 'package:facebook/login_sheet.dart';
import 'package:facebook/registration_screen.dart';
import 'package:facebook/signup_screen.dart';
import 'package:facebook/splash_screen.dart';
import 'package:facebook/stack_screen.dart';
import 'package:facebook/tab_page1.dart';
import 'package:facebook/tab_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupScreen(),

      debugShowCheckedModeBanner: false,
    );
  }
}


