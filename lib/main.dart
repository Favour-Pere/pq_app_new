import 'package:flutter/material.dart';
import 'package:pq_app_new/src/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.tOnBoardingScreen,
      routes: AppRoutes.routes,
    );
  }
}
