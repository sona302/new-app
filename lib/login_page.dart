import 'package:facebook/login_screen.dart';
import 'package:facebook/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 50),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                  child: Lottie.asset('assets/lottie/Floral Animated Design.json')),
              SizedBox(height: 20,width: 150,),
              Text('Login to continue '),
          Text('Email ',
            style: TextStyle( color: Colors.black),),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Enter you email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 25,
                    )

                ),
              ),
              SizedBox(
                height: 20,
                width: 30,
              ),
          Text('Password', textAlign: TextAlign.left,
            style: TextStyle( color: Colors.black),),
              TextField(
                decoration: InputDecoration(
                    labelText: ' Enter your Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 25,
                    )

                ),
              ),
              SizedBox(
                height: 20,
                width: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                    ),
                    child: Text('Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24, fontWeight: FontWeight.normal
                      ),)


                ),
              ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text('Forget Password', textAlign: TextAlign.center,
             style: TextStyle( color: Colors.blue,
             fontSize: 20),

           ),
         ),
              Padding(
                padding: const EdgeInsets.all(15.0),
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
                      minimumSize: Size(500, 70),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                    ),
                    child: Text('Sign-up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24, fontWeight: FontWeight.normal
                      ),),




                ),
              ),
            ],
           ),
        ),
      ) ,
    );
  }
}
