import 'domain/home.dart';
import 'presentation/costum_icon.dart' as costIcons;

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color.fromRGBO(34, 54, 78, 1),
          textTheme: TextTheme(title: TextStyle(color: Colors.white))),
      home: Home(),
    );
  }
}
