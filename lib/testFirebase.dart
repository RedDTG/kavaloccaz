import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class TestFirebase extends StatelessWidget {
  TestFirebase();
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore bdd = FirebaseFirestore.instance;
    CollectionReference equipementsCavalier =
        bdd.collection('produits').doc('equipements').collection('cavalier');
    return StreamBuilder<QuerySnapshot>(
      stream: equipementsCavalier.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Allo Houston ? On a un problème !");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading...");
        }

        return new Text(snapshot.data.docs[0].data()['nom']);
        /*ListView(
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return new Text(document.data()['test']);
          }).toList(),
        );*/
      },
    );
  }
}
