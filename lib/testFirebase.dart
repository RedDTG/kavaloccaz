import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class TestFirebase extends StatelessWidget {
  TestFirebase();
  @override
  Widget build(BuildContext context) {
    CollectionReference equipements =
        FirebaseFirestore.instance.collection('equipements');
    return StreamBuilder<QuerySnapshot>(
      stream: equipements.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Allo Houston ? On a un problème !");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading...");
        }

        return new ListView(
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return new Text(document.data()['test']);
          }).toList(),
        );
      },
    );
  }
}
