import 'package:flutter/material.dart';
class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(0),
                image: DecorationImage(
                    image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/028/272/892/small/a-cup-of-coffee-with-book-and-pen-on-the-wooden-table-ai-generated-free-photo.jpg',

                    ),

                ),
              )
              ),
            Positioned(top: 20,
            right: 66,
            child:
            Text('Bold coffee for bold lives.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            )
            ),
              Positioned(top: 35,
                  right: 66,
                  child:
                  Text('Pure magic in every mug.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
              ),
              Positioned(bottom: 40,
                  left: 66,
                  child:
                  Text('Slow down, breathe in, and sip the comfort.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
