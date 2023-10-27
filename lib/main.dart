import 'package:app2/my_cinema.dart';
import 'package:app2/my_classroom.dart';
import 'package:app2/my_form.dart';
import 'package:app2/my_home_page.dart';
import 'package:app2/my_cinema.dart';
import 'package:app2/my_instagram.dart';
import 'package:app2/my_math.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Group 02",
      home: MyInstagram(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
    );
  }
}
