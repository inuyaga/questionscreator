import 'package:flutter/material.dart';
import 'package:questionscreator/paginas/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creator Questions',
      theme: ThemeData(
      
        primarySwatch: Colors.indigo,
      
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IndexViewPage(),
    );
  }
}





