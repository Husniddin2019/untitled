import 'package:flutter/material.dart';
import 'package:untitled1/HomePage.dart';
import 'DetailsPage.dart';
import 'package:untitled1/DetailsPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
      routes: {
        HomePage.id:(context) => HomePage(),
        DeTailPage.id: (context) => DeTailPage()
    },
    );
  }
}

