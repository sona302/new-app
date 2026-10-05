import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}
class _SignupScreenState extends State<SignupScreen> {

  final namecontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();

  Future<void> signup() async{
    final name = namecontroller.text.trim();
    final phone = phonecontroller.text.trim();
    final email = emailcontroller.text.trim();
    final password = passwordcontroller.text.trim();
    final confirmpassword = confirmpasswordcontroller.text.trim();

    if(name.isEmpty){
      ScaffoldMessenger.of(
        context
      ).showSnackBar(const SnackBar(content: Text('Please Enter Your Name')));
      return;

    }

    if(phone.isEmpty){
      ScaffoldMessenger.of(
          context
      ).showSnackBar(const SnackBar(content: Text('Please Enter Your Phone Number')));
      return;

    }
    if(email.isEmpty){
      ScaffoldMessenger.of(
          context
      ).showSnackBar(const SnackBar(content: Text('Please Enter Your Email')));
      return;

    }
    if(password.isEmpty){
      ScaffoldMessenger.of(
          context
      ).showSnackBar(const SnackBar(content: Text('Please Enter Your Password')));
      return;

    }
    if(confirmpassword.isEmpty){
      ScaffoldMessenger.of(
          context
      ).showSnackBar(const SnackBar(content: Text('Please Enter Your Confirm Password')));
      return;

    }
    if (password != confirmpassword){
      ScaffoldMessenger.of(
        context
    ).showSnackBar(const SnackBar(content: Text('Your password do not matched')));
      return;

  }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Sign Up', style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: namecontroller,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: passwordcontroller,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: confirmpasswordcontroller,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(

                  onPressed: signup,
                  child: const Text('Sign Up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}