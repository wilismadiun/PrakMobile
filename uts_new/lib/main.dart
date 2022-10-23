import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_new/page/login.dart';
import 'package:uts_new/page/menu.dart';
import 'package:uts_new/page/profile.dart';
import 'package:vector_math/vector_math_lists.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: loginpage(),
    );
  }
}
