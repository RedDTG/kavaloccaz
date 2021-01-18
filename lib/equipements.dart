import 'package:flutter/material.dart';

class Equipements extends StatelessWidget {
  String title;

  Equipements(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    double hauteur = MediaQuery.of(context).size.height;

    return new Scaffold(
        body: new Center(
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
                    children: []))));
  }
}
