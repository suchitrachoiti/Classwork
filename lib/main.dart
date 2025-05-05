import 'package:flutter/material.dart';
import 'package:class_work/Homepage.dart';
import 'package:class_work/listview_page.dart';
import 'package:class_work/gridview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
