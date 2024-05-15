import 'package:bmi_calculater/features/presentetions/pages/bmi_calcaluter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor:const  Color(0xff0A001FE5)
      ),
      home: const BmiCalculater(),
    );
  }
}
