import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'equides.dart';

class TestFirebase extends StatelessWidget {
  TestFirebase();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
          child: new FlatButton(
        onPressed: _testFB,
        child: new Container(
          color: Colors.red,
        ),
      )),
    );
  }

  void _testFB() {
    DatabaseReference _testRef =
        FirebaseDatabase.instance.reference().child("test");
    _testRef.set("Hello world ${Random().nextInt(100)}");
  }
}
