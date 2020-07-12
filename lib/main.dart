import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Recipe',
      theme: ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}
