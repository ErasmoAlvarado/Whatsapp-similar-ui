import 'package:flutter/material.dart';
import 'package:ramdonuser/colorscheme.dart';
import 'package:ramdonuser/page/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      darkTheme: MyTheme.BlackTheme,
      theme: MyTheme.WhiteTheme,
    );
  }
}
