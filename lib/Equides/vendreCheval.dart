import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kavaloccaz/_bottomBar.dart';
import 'package:kavaloccaz/models/EquidesModel.dart';
import '../_bottomBar.dart';

// ignore: must_be_immutable
class VendreCheval extends StatelessWidget {
  final db = FirebaseFirestore.instance;
  VendreCheval();

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    double hauteur = MediaQuery.of(context).size.height;
    TextEditingController _nomController = new TextEditingController();
    TextEditingController _descriptionController = new TextEditingController();
    TextEditingController _lieuController = new TextEditingController();
    TextEditingController _raceController = new TextEditingController();
    TextEditingController _prixController = new TextEditingController();
    TextEditingController _tailleController = new TextEditingController();

    return new GestureDetector(
        onTap: (() => FocusScope.of(context).requestFocus(new FocusNode())),
        child: Scaffold(
          body: new SingleChildScrollView(
            child: Center(
              child: new Container(
                margin: EdgeInsets.all(0),
                width: largeur,
                height: hauteur,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.0, -0.25),
                        end: Alignment(0.0, 0.85),
                        colors: [
                      Color(0xFF011E55),
                      Color(0xFF276399),
                      Color(0xFF9BC2E5)
                    ])),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        new Container(
                            margin: EdgeInsets.only(
                                top: 20, right: 20, left: 20, bottom: 0),
                            child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  new Container(
                                      margin: EdgeInsets.only(right: 5),
                                      width: largeur * 0.35,
                                      child:
                                          Image.asset('assets/img/logo.png')),
                                  new Text('EQUIDÉS',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: 'ArchitectsDaughter',
                                          color: Color(0xFFF6CC33)))
                                ])),
                        new Container(
                          width: largeur * 0.70,
                          height: hauteur * 0.08,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0)),
                          margin: EdgeInsets.only(bottom: 15.0, top: 5.0),
                          child: new RaisedButton(
                            onPressed: () {},
                            child: new Text('VENDRE UN CHEVAL',
                                style: TextStyle(
                                    fontFamily: 'ArchitectsDaughter',
                                    fontSize: 20.0)),
                            color: Color(0xFFCDCDCD),
                            textColor: Color(0xFF030082),
                            elevation: 7.5,
                          ),
                        ),
                        new Container(
                          width: largeur * 0.55,
                          height: hauteur * 0.06,
                          margin: EdgeInsets.all(7.0),
                          color: Color(0xFFCDCDCD),
                          child: new TextField(
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                              ),
                              labelText: "Nom",
                            ),
                            controller: _nomController,
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        new Container(
                          width: largeur * 0.55,
                          height: hauteur * 0.06,
                          margin: EdgeInsets.all(7.0),
                          color: Color(0xFFCDCDCD),
                          child: new TextField(
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                              ),
                              labelText: "Race",
                            ),
                            keyboardType: TextInputType.text,
                            controller: _raceController,
                          ),
                        ),
                        new Container(
                          width: largeur * 0.55,
                          height: hauteur * 0.06,
                          margin: EdgeInsets.all(7.0),
                          color: Color(0xFFCDCDCD),
                          child: new TextField(
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                              ),
                              labelText: "Prix (en €)",
                            ),
                            keyboardType: TextInputType.text,
                            controller: _prixController,
                          ),
                        ),
                        new Container(
                          width: largeur * 0.55,
                          height: hauteur * 0.06,
                          margin: EdgeInsets.all(7.0),
                          color: Color(0xFFCDCDCD),
                          child: new TextField(
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                              ),
                              labelText: "Lieu",
                            ),
                            keyboardType: TextInputType.text,
                            controller: _lieuController,
                          ),
                        ),
                        new Container(
                          width: largeur * 0.55,
                          height: hauteur * 0.06,
                          margin: EdgeInsets.all(7.0),
                          color: Color(0xFFCDCDCD),
                          child: new TextField(
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                              ),
                              labelText: "Taille (en cm)",
                            ),
                            keyboardType: TextInputType.text,
                            controller: _tailleController,
                          ),
                        ),
                        new Container(
                          width: largeur * 0.55,
                          height: hauteur * 0.06,
                          margin: EdgeInsets.only(top: 7.0),
                          color: Color(0xFFCDCDCD),
                          child: new TextField(
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                              ),
                              labelText: "Description",
                            ),
                            controller: _descriptionController,
                            keyboardType: TextInputType.multiline,
                          ),
                        ),
                        new Container(
                          width: largeur * 0.55,
                          height: hauteur * 0.06,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0)),
                          margin: EdgeInsets.only(top: 10.0),
                          child: new RaisedButton(
                            onPressed: () async {
                              EquidesAnnonce annonceCheval = new EquidesAnnonce(
                                  _nomController.text,
                                  _lieuController.text,
                                  _descriptionController.text,
                                  dateNow(),
                                  _raceController.text,
                                  _prixController.text,
                                  _tailleController.text);

                              {
                                await db
                                    .collection('produits')
                                    .doc('equides')
                                    .collection('chevaux')
                                    .add(annonceCheval.toJson());
                              }
                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);
                            },
                            child: new Text('SOUMETTRE',
                                style: TextStyle(
                                    fontFamily: 'ArchitectsDaughter',
                                    fontSize: 16.0)),
                            color: Color(0xFFCDCDCD),
                            textColor: Color(0xFF030082),
                            elevation: 7.5,
                          ),
                        ),
                      ],
                    ),
                    BottomBarWidget(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

dateNow() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final String date = formatter.format(now);
  return date;
}
