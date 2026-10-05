import 'package:flutter/material.dart';

import 'custom_widget/first_cw.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context){
    final List<Map<String, dynamic>> workshops = const [
     {
        'imageUrl': 'https://media.craiyon.com/2025-04-09/iyBivq-tQNKYUY20hVwUrw.webp',
        'title':'Monkey house',
        'subtitle':'Creative monkey',
        'distance':'0.8mi',
        'rating': 4.7,
        'age':'Age:3-5',
        'category':'Cute+Dangerous',
        'duration':'Monthly',
      },
      {
        'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtfFmRZvYm5aeD2ouJ-ejSSobHlYZuQeGhbPgeJehQhLKcqCwugGwEqojT&s=10',
        'title':'Donkey house',
        'subtitle':'Creative Donkey',
        'distance':'0.19mi',
        'rating': 5.7,
        'age':'Age:5-7',
        'category':'For work',
        'duration':'Monthly',
      },
      {
        'imageUrl': 'https://png.pngtree.com/png-clipart/20240525/original/pngtree-cute-snake-baby-png-image_15171186.png',
        'title':'Snake house',
        'subtitle':'Creative snake',
        'distance':'0.27mi',
        'rating': 4.3,
        'age':'Age:3-5',
        'category':'Dangerous',
        'duration':'Monthly',
      },
      {
        'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXr2iyRw8EORz3a-bO9qZkEO54GNH4XCYEd-BXQ_7MUg&s=10',
        'title':'Frog  house',
        'subtitle':'Creative frog',
        'distance':'0.27mi',
        'rating': 4.3,
        'age':'Age:3-5',
        'category':'Silly',
        'duration':'Monthly',
      },
    ];
    return Scaffold(
      body: ListView.builder(
          itemCount: workshops.length,
          itemBuilder: (context, index){
            final item = workshops[index];
            return FirstCw(
                imageUrl:item['imageUrl'],
                title: item['title'],
                subtitle:item['subtitle'],
                distance:item['distance'],
                rating: item['rating' ],
                age: item['age'],
                category:item['category'],
                duration:item['duration'],
            );


      }),
    );
  }
}