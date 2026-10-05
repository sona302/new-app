import 'package:flutter/material.dart';
class FridayTask extends StatefulWidget {
  const FridayTask({super.key});

  @override
  State<FridayTask> createState() => _FridayTaskState();
}

class _FridayTaskState extends State<FridayTask> {
  bool statusSwitch = false;
  String selectGender = 'Male';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(

        padding: const EdgeInsets.all(27.0),
        child: Column(
          children: [
                Row(
                  children: [
                    Text(
                      'Selected: $selectGender',
                      style: const TextStyle(fontSize: 20),),
                              Radio<String>(
                              value: 'Male',
                              groupValue: selectGender,
                              onChanged: (value){
                                setState(() {
                    selectGender = value!;
                                });
                              },

                              ),
                    Radio<String>(
                      value: 'Female',
                      groupValue: selectGender,
                      onChanged: (value){
                        setState(() {
                          selectGender = value!;
                        });
                      },
                    ),
                  ],
                ),
              Row(
                children: [
                  Text('Off'),
                  SizedBox(),
                  Transform.scale(
                    scale: 1,
                    child: Switch(value: statusSwitch,
                        activeThumbColor: Colors.lightBlueAccent,
                        activeTrackColor: Colors.blueAccent,
                        onChanged: (value){
                      setState(() {
                        statusSwitch = value;
                      });
                    }),
                  ),
                  Text('On')
                ],
              )


          ],
        ),
      ),
    );
  }
}
