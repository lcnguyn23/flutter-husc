import 'package:app2/my_cinema.dart';
import 'package:app2/my_classroom.dart';
import 'package:app2/my_home_page.dart';
import 'package:app2/my_cinema.dart';
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
      home: MyCinema(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Raleway",
      ),
    );
  }
}
