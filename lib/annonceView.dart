import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kavaloccaz/annonceModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kavaloccaz/annonceView_confirm.dart';
import 'package:intl/date_symbol_data_file.dart';

class newAnnonceView extends StatelessWidget {
  final Annonce annonce;
  newAnnonceView({Key key, @required this.annonce}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _titreController = new TextEditingController();
    TextEditingController _descriptionController = new TextEditingController();
    TextEditingController _localisationController = new TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text('Créer une annonce'),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Titre de l'annonce"),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    controller: _titreController,
                    autofocus: true,
                  ),
                ),
                Text("Localisation de votre annonce (ex : 44000 Nantes)"),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    controller: _localisationController,
                    autofocus: true,
                  ),
                ),
                Text("Description de votre annonce"),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    controller: _descriptionController,
                    autofocus: true,
                  ),
                ),
                RaisedButton(
                  child: Text('Continuer'),
                  onPressed: () {
                    annonce.title = _titreController.text;
                    annonce.localisation = _localisationController.text;
                    annonce.description = _descriptionController.text;
                    annonce.date = dateNow();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                newAnnonceView_confirm(annonce: annonce)));
                  },
                )
              ]),
        ));
  }
}

dateNow() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String date = formatter.format(now);
  return date;
}
