import 'package:flutter/material.dart';
class TabPage1 extends StatelessWidget {
  const TabPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
       title: Text("Tab-1"),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 55,
          child:ElevatedButton(
              onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Logout'),
                    content: Text('Are you sure do you want to logout'),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          child: const Text('OK')
                      ),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          child: const Text('Push')
                      ),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          child: const Text('Cancel')
                      )

                    ],
                  );
                }
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),

                )
              ),
              child:const Text('Submit',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1
              ),
              )

          ),
        ),
      ),
    );
  }
}
