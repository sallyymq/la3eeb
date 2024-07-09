import 'package:flutter/material.dart';
import 'package:la3eeb/pages/about.dart';
import 'package:la3eeb/pages/elmal3ab.dart';
import 'package:la3eeb/pages/pointyard.dart';
import 'package:la3eeb/pages/wheresTheBall.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'La3eeb',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: HomePage(),
      routes: {
        '/about': (context) => AboutPage(),
        '/pointyardd': (context) => PointYard(),

        '/wheres_the_ball': (context) => Wherestheball(),
        '/elmal3ab': (context) => elmal3abPage(),
        '/home': (context) => HomePage(),
        // '/login': (context) => LoginPage(),
      },
    );
  }
}
