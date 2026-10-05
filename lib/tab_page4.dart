import 'package:flutter/material.dart';
class TabPage4 extends StatelessWidget {
  const TabPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Tab Page 4',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 39
          ),
        ),
      ),
    );
  }
}
