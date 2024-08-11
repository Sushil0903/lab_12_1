import 'package:flutter/material.dart';
import 'package:lab_12_1/q10/q10.dart';
import 'package:lab_12_1/q2/q2.dart';
import 'package:lab_12_1/q4/q4.dart';
import 'package:lab_12_1/q8/q8.dart';

import 'home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>HomePage(),
        "q2":(context)=>Q2(),
        "q4":(context)=>Q4(),
        "q8":(context)=>Q8(),
        "q10":(context)=>Q10(),
      },
    );
  }
}
