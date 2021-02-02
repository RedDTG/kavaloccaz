import 'package:flutter/material.dart';
import 'package:kavaloccaz/annonceView.dart';
import 'annonceModel.dart';

class newAnnonceViewChoice extends StatelessWidget {
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                newAnnonceView(annonce: newAnnonce)));
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
                  onPressed: () {},
                  child: Text("JE PROPOSE"),
                ),
              ))
            ])));
  }
}
