import 'package:flutter/material.dart';
class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridScreen',
        style: TextStyle(color: Colors.pink,
            fontSize: 36,
          fontWeight: FontWeight.bold
        ),
      ),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 19,
              crossAxisSpacing: 19),
          itemBuilder: (context, index){
            return Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text('Box: ${index + 1}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink
                ),
                ),
              ),
            );
          }),
    );
  }
}
