import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'camera-screen.dart';

class homepageDemo extends StatefulWidget {
  @override
  _homepageDemoState createState() => _homepageDemoState();
}

class _homepageDemoState extends State<homepageDemo> {
  @override

  Widget _RandomText() {
    final wordPair = WordPair.random();
    return Text(
        wordPair.asPascalCase,
        style: TextStyle(
          fontSize: 20,
        ),
    );
  }

  Widget _ExamsList() {
    return ListTile(
      leading: Icon(
            Icons.book_online_outlined,
            size: 50,
      ),
      title: Text(
            '30 min, 30 sec',
            style: TextStyle(
              fontSize: 15,
            ),
      ),
      subtitle: _RandomText(),
      trailing: Container(
            height: 23,
            width: 70,
            decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                        topRight:Radius.circular(5),
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                        ),
            ),
        child: FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CameraWidget()));
            },
            child: Text(
                'Start',
                style: TextStyle(color: Colors.white, fontSize: 12),
                ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueGrey,
            child: Center(
              child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.height / 7,
                        height: MediaQuery.of(context).size.height / 7,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle
                        ),

                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 3 / 4 - 85,
                        height: MediaQuery.of(context).size.height/8,
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Hello,',
                              style: TextStyle(
                                fontSize: 15,
                                //fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                            ),
                            SizedBox(height: 3),
                            Text(
                                'Hugh Janus',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                            ),
                            SizedBox(height: 3),
                            Text(
                                'Please be honest during the exam',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
              ),
              ),
            ),
          Container(
            height: MediaQuery.of(context).size.height * 2 / 3 - 106,
            width: MediaQuery.of(context).size.width,
            //color: Colors.transparent,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              )
            ),
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                    child: Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 8), // changes position of shadow
                        ),]
                      ),
                      child: Center(
                        child: TextField(
                            style: TextStyle(
                              fontSize: 15,
                              height: 2.0,
                            ),
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(),
                                hintText: 'Search'
                          ),
                        ),
                      ),
                    ),
                ),
                Container(
                  width: 350,
                  height: 335,
                  color: Colors.transparent,
                  child: ListView(
                    children: <Widget>[
                      _ExamsList(),
                      _ExamsList(),
                      _ExamsList(),
                      _ExamsList(),
                      _ExamsList(),
                      _ExamsList(),
                      _ExamsList(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
