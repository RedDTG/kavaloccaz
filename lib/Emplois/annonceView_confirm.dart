import 'package:flutter/material.dart';
import 'package:kavaloccaz/models/annonceModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class NewAnnonceViewConfirm extends StatelessWidget {
  final db = FirebaseFirestore.instance;
  final Annonce annonce;
  String choix;
  NewAnnonceViewConfirm({Key key, @required this.annonce, @required this.choix})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        bottomOpacity: 4.0,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'CONFIRMATION',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(30.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 2.0)),
                      child: Column(children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "TITRE",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${annonce.title}",
                          textAlign: TextAlign.center,
                        )
                      ]))
                ])),
            Padding(
                padding: EdgeInsets.all(30.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 2.0)),
                      child: Column(children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "LOCALISATION",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${annonce.localisation}",
                          textAlign: TextAlign.center,
                        )
                      ]))
                ])),
            Padding(
                padding: EdgeInsets.all(30.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 2.0)),
                      child: Column(children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "DESCRIPTION",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${annonce.description}",
                          textAlign: TextAlign.center,
                        )
                      ]))
                ])),
            RaisedButton(
              child: Text('Confirmer'),
              onPressed: () async {
                {
                  await db
                      .collection('emplois')
                      .doc(choix)
                      .collection('annonce')
                      .add(annonce.toJson());
                }
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            )
          ],
        ),
      ),
    );
  }
}
