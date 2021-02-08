import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kavaloccaz/models/equipementCavalierModel.dart';
import '../_bottomBar.dart';

// ignore: must_be_immutable
class VendreEquipementCavalier extends StatelessWidget {
  VendreEquipementCavalier();

    final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    double hauteur = MediaQuery.of(context).size.height;
        TextEditingController _nomController = new TextEditingController();
    TextEditingController _descriptionController = new TextEditingController();
    TextEditingController _prixController = new TextEditingController();
    TextEditingController _lieuController = new TextEditingController();
    TextEditingController _marqueController = new TextEditingController();
    return new Scaffold(
          body: SingleChildScrollView(
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
                          top: 9, right: 20, left: 20, bottom: 0),
                      child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Container(
                                margin: EdgeInsets.only(right: 5),
                                width: largeur * 0.35,
                                child: Image.asset('assets/img/logo.png')),
                            new Text('Equipement \n Cavalier',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'ArchitectsDaughter',
                                    color: Color(0xFFF6CC33)))
                          ])),
                  new Container(
                    width: largeur * 0.70,
                    height: hauteur * 0.08,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2.0)),
                    margin: EdgeInsets.only(bottom: 15.0, top: 5.0),
                    child: new RaisedButton(
                      onPressed: () {},
                      child: new Text('VENDRE UN EQUIPEMENT',
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
                      controller: _nomController,
                      decoration: new InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                        ),
                        labelText: "Le nom",
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  new Container(
                    width: largeur * 0.55,
                    height: hauteur * 0.06,
                    margin: EdgeInsets.all(7.0),
                    color: Color(0xFFCDCDCD),
                    child: new TextField(
                      controller: _descriptionController,
                      decoration: new InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                        ),
                        labelText: "La description",
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  new Container(
                    width: largeur * 0.55,
                    height: hauteur * 0.06,
                    margin: EdgeInsets.all(7.0),
                    color: Color(0xFFCDCDCD),
                    child: new TextField(
                      controller: _prixController,
                      decoration: new InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                        ),
                        labelText: "Le prix",
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  new Container(
                    width: largeur * 0.55,
                    height: hauteur * 0.06,
                    margin: EdgeInsets.all(7.0),
                    color: Color(0xFFCDCDCD),
                    child: new TextField(
                      controller: _lieuController,
                      decoration: new InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide:const BorderSide(color: Colors.white, width: 2.0)),
                        labelText: "Ou est le produit",
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  new Container(
                    width: largeur * 0.55,
                    height: hauteur * 0.06,
                    margin: EdgeInsets.all(7.0),
                    color: Color(0xFFCDCDCD),
                    child: new TextField(
                      controller: _marqueController,
                      decoration: new InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide:const BorderSide(color: Colors.white, width: 2.0)),
                        labelText: "La marque",
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  new Container(
                    width: largeur * 0.55,
                    height: hauteur * 0.06,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2.0)),
                    margin: EdgeInsets.only(top: 12.0),
                    child: new RaisedButton(
                      onPressed: () async {
                        EquipementCavalier equipementCavalier = new EquipementCavalier(
                          _nomController.text, 
                          _descriptionController.text, 
                          _prixController.text, 
                          _lieuController.text, 
                          _marqueController.text);
                          {
                            await db
                            .collection('produits')
                            .doc('equipements')
                            .collection('cavalier')
                            .add(equipementCavalier.toJson());
                          }
                          Navigator.of(context).popUntil((route) => route.isFirst);
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
                  new Container(
                    width: largeur * 0.95,
                    height: hauteur * 0.08,
                    color: Colors.grey,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10.0),
                    child: new Text(
                      'publicité',
                      style: TextStyle(color: Colors.black),
                      textScaleFactor: 1.2,
                    ),
                  ),
                ],
              ),
              BottomBarWidget(),
            ],
          ),
        ),
      ));
  }
}
