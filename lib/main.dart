import 'package:classassignment/view/signin/signin.dart';

import 'package:flutter/material.dart';

String? username = '';
String? password = '';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signin(),
    );
  }
}
