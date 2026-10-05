import 'package:flutter/material.dart';

class LoginSheet extends StatelessWidget {
  const LoginSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
            children: [

              Container(
            width: 150,
          height: 150,
                decoration: BoxDecoration(
                  color: Colors.black
                ),
        ),
        SizedBox(width: 10,),
        Container(
        width: 150,
        height: 150,  decoration: BoxDecoration(
            color: Colors.blue
      ),),
      SizedBox(width: 10,),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey
              ),),
              SizedBox(width: 10,),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.green),),
              SizedBox(width: 10,),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.purple
              ),),
              SizedBox(width: 10,),
              Container(
                width: 150,
                height: 150,  decoration: BoxDecoration(
                  color: Colors.pink
              ),),
              SizedBox(width: 10,),


          ],
        )
            ),
            SizedBox(height: 40,),
            Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.red),

            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.yellow),

            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.orange),

            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.brown),

            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.tealAccent),

            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.lightGreenAccent),

            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.black12),

            ),
            SizedBox(height: 10,),
            Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.purpleAccent),

            ),

          ],
              ),
            )
    );
  }
}
