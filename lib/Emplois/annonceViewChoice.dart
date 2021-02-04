import 'package:flutter/material.dart';
import 'annonceView.dart';
import '../models/annonceModel.dart';

class NewAnnonceViewChoice extends StatelessWidget {
  final newAnnonce = new Annonce(null, null, null, null);
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
            'Créer une annonce',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Container(
                  child: ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                buttonColor: Colors.white,
                child: RaisedButton(
                  onPressed: () {
                    String choix = 'recherche';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
<<<<<<< HEAD:lib/annonceViewChoice.dart
                            builder: (context) => newAnnonceView(
                                  annonce: newAnnonce,
                                  choix: choix,
                                )));
=======
                            builder: (context) =>
                                NewAnnonceView(annonce: newAnnonce)));
>>>>>>> red:lib/Emplois/annonceViewChoice.dart
                  },
                  child: Text("JE CHERCHE"),
                ),
              )),
              Container(
                  child: ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                buttonColor: Colors.white,
                child: RaisedButton(
                  onPressed: () {
                    String choix = 'demande';
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => newAnnonceView(
                                  annonce: newAnnonce,
                                  choix: choix,
                                )));
                  },
                  child: Text("JE PROPOSE"),
                ),
              ))
            ])));
  }
}
