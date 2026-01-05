import 'package:flutter/material.dart';

class PersonalQuizScreen extends StatelessWidget {
  const PersonalQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Quiz Name"),
              TextField(
                decoration: InputDecoration(labelText: 'Enter Quiz name here'),
              ),

              Text("School"),
            ],
          ),
        ),
      ),
    );
  }
}
