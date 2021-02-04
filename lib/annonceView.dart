import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kavaloccaz/annonceModel.dart';
import 'package:kavaloccaz/annonceView_confirm.dart';

class newAnnonceView extends StatelessWidget {
  final Annonce annonce;
  String choix;
  newAnnonceView({
    Key key,
    @required this.choix,
    @required this.annonce,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    TextEditingController _titreController = new TextEditingController();
    TextEditingController _descriptionController = new TextEditingController();
    TextEditingController _localisationController = new TextEditingController();

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
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                      textAlign: TextAlign.left,
                      controller: _titreController,
                      autocorrect: true,
                      maxLength: 50,
                      autofocus: true,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          labelText: "TITRE",
                          prefixIcon: Icon(Icons.title),
                          helperText: "exemple : CDI Cavalier",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          focusColor: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                      textAlign: TextAlign.left,
                      controller: _localisationController,
                      autocorrect: true,
                      maxLength: 50,
                      autofocus: true,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          labelText: "LOCALISATION",
                          prefixIcon: Icon(Icons.location_pin),
                          helperText: "exemple : 44000 Nantes",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          focusColor: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                      textAlign: TextAlign.left,
                      controller: _descriptionController,
                      autocorrect: true,
                      maxLength: 50,
                      autofocus: true,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          labelText: "DESCRIPTION",
                          prefixIcon: Icon(Icons.description),
                          helperText:
                              "exemple : Je propose un poste de cavalier à partir du 25 Janvier",
                          helperMaxLines: 3,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          focusColor: Colors.black)),
                ),
                RaisedButton(
                    color: Colors.white,
                    splashColor: Colors.blueAccent,
                    child: Text('Continuer'),
                    onPressed: () {
                      annonce.title = _titreController.text;
                      annonce.localisation = _localisationController.text;
                      annonce.description = _descriptionController.text;
                      annonce.date = dateNow();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return newAnnonceView_confirm(
                            annonce: annonce, choix: choix);
                      }));
                    })
              ]),
        ));
  }
}

dateNow() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final String date = formatter.format(now);
  return date;
}
