import 'package:flutter/material.dart';

class GroupQuizScreen extends StatelessWidget {
  const GroupQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Text("Group Quiz Name"), SizedBox(height: 20)],
        ),
      ),
    );
  }
}
