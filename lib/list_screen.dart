import 'package:flutter/material.dart';
class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> names = [
      'Ali',
      'faraz',
      'ahmad',
      'laraib',
      'shazain',
      'shazaib',
      'astaghfirullah'

    ];
    return Scaffold(
      appBar: AppBar(),
      body:ListView.builder(
       itemCount: 7,
        itemBuilder: (BuildContext context, int index,){
         return Text(
           names[index],
           style: TextStyle(fontSize: 20),
         );
        },
      ),
    );
  }
}
