import 'package:flutter/material.dart';
import 'package:untitled1/DetailsPage.dart';
class HomePage extends StatefulWidget {
  static final String id = "HomePage";
  //const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
            onPressed: (){
              Navigator.pushNamed(context, DeTailPage.id);
            },
            child: Text(
              "salom"
            ))
      ),
    );
  }
}
