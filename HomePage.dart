import 'dart:ui';

import 'package:flutter/material.dart';
class home extends StatefulWidget {
 // const home({Key? key}) : super(key: key);


  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  var  _email;
  var  _password;
  final _formkey = GlobalKey<FormState>();
void _qilgin(){
  if (_formkey.currentState!.validate()){
    _formkey.currentState!.save();
    print("Welcome");

  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   title: Text("PDP"),
      //   centerTitle: true,
      // ),
      body: Form(
        key: _formkey,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Text("Instagram",style: TextStyle(fontSize: 42),),
              ),
            ),
            Padding( padding:EdgeInsets.symmetric(horizontal: 30,vertical: 0) ,

              child: TextFormField(
                decoration: InputDecoration(labelText: "email"),
                validator: (input) =>
                     !input!.contains("@") ? 'pochta tering': null,
                onSaved: (input) => _email = input,
              ),
            ),
            Padding( padding:EdgeInsets.symmetric(horizontal: 30,vertical: 0) ,
              child: TextFormField(
                decoration: InputDecoration(labelText: "password"),
                validator: (input) =>
                input!.length < 6 ?  'xato parol': null,
                onSaved: (input) => _password = input,
              ),
            ),
            FlatButton(padding:EdgeInsets.symmetric(horizontal: 150,vertical: 0), color: Colors.blue, onPressed: (){_qilgin();}, child: Text("Log in",style: TextStyle(color: Colors.white70,fontSize: 24))),
            Row(
              children: [
                FlatButton(padding:EdgeInsets.symmetric(horizontal: 50,vertical: 0), onPressed: (){}, child: Text("Don't have an account?")),
                FlatButton( padding:EdgeInsets.symmetric(horizontal: 20,vertical: 0),  onPressed: (){}, child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold),)),
              ],
            )
          ],
        ),


      ),
    );
  }
}
