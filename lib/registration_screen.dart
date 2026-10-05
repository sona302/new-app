import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}
class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 50,),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(15),
                child: Image.asset('assets/images.jpg',
                  fit: BoxFit.cover,
          
          
                ),
              ),
              SizedBox(
                height: 50,
                width:  50,
              ),
              Text('Please register your self',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.person_2_outlined),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 25,
                    )
          
                ),
              ),
              SizedBox(
                height: 15,
                width:  15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Enter username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.person_2_outlined),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 25,
                    )
          
                ),
              ),
              SizedBox(
                height: 15,
                width:  15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Enter email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.email_outlined),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 25,
                    )
          
                ),
              ),
              SizedBox(
                height: 15,
                width:  15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Enter your Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.password_outlined),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 25,
                    )
          
                ),
              ),
              SizedBox(
                height: 15,
                width:  15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Confirm your Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.password_outlined),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 25,
                    )
          
                ),
              ),
              SizedBox(
                height: 15,
                width:  15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Date of birth',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.date_range),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 25,
                    )
          
                ),
              ),
              SizedBox(
                height: 15,
                width:  15,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrationScreen(),
                    ),
                  );
                },
                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                  ),
                  child: Text('Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24, fontWeight: FontWeight.normal
                    ),),




                ),
              ),
            ],
          
          ),
        ),
      )

    );
  }
}
