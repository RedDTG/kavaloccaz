import 'package:flutter/material.dart';
import 'package:kavaloccaz/annonceModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class newAnnonceView_confirm extends StatelessWidget {
  final db = FirebaseFirestore.instance;
  final Annonce annonce;
  newAnnonceView_confirm({Key key, @required this.annonce}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation de votre annonce'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Titre de l'annonce : ${annonce.title}"),
            Text("Localisation de l'annonce : ${annonce.localisation}"),
            Text("Description de l'annonce : ${annonce.description}"),
            RaisedButton(
              child: Text('Confirmer'),
              onPressed: () async {
                {
                  await db
                      .collection('emplois')
                      .doc('recherche')
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
