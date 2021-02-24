import 'package:ardhra_chechi_ui/StudentDetail/student_registration.dart';
import 'package:ardhra_chechi_ui/page1.dart';
import 'package:ardhra_chechi_ui/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: StudentRegistration(),
    );
  }
}

