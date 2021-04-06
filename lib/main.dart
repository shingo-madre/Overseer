import 'dart:ui';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  child: Image.asset('assets/Overseer Logo.jpg'),
                ),
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 0, bottom: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email/Username",
                  hintText: "Email dan Username yang anda daftarkan",
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Password yang anda daftarkan"
                ),
              ),
          ),
          FlatButton(
              onPressed: null,
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Forgot Password",
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => homepageDemo()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
            ),
          ),
        ],
      ),
    );
  }
}




