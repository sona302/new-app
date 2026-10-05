import 'package:flutter/material.dart';

class ButtonsClass extends StatefulWidget {
  const ButtonsClass({super.key});

  @override
  State<ButtonsClass> createState() => _ButtonsClassState();
}

class _ButtonsClassState extends State<ButtonsClass> {
  bool isCheck = false;
  String selectGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Checkbox(value: isCheck,
                onChanged: (bool? value){
              setState(() {
                isCheck = value?? false;
              });
                }),
            SizedBox(
              height: 50,
                width: 50,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Text('Select: $selectGender',
                      style: const TextStyle(fontSize: 33),

              ),

            ),
            Radio<String>(
                value: 'Male',
              groupValue: selectGender,
                    onChanged: (value){
                  setState(() {
                    selectGender = value!;
                  });
                },
              ),
            SizedBox(
              height: 20,
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}








