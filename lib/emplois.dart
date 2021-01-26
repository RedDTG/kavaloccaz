import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '_bottomBar.dart';

// ignore: must_be_immutable
class Emplois extends StatelessWidget {
  String title;

  Emplois(String title) {
    this.title = title;
  }
  final List<String> listEmploi = [
    "Cavalier",
    "Cavalier",
    "Cavalier",
    "Cavalier",
    "Cavalier",
    "Cavalier",
  ];
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
        child: new Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Container(
                      margin: EdgeInsets.only(top: 30, left: 20),
                      child: new Image.asset('assets/img/logo.png'),
                      width: (largeur / 2.75),
                    ),
                    new Container(
                        width: (largeur / 2.75),
                        child: new Text('Emplois',
                            style: TextStyle(
                                fontFamily: 'ArchitectsDaughter',
                                color: Color(0xFFF6CC33),
                                fontSize: 36))),
                  ]),
              new Container(
                  child: Expanded(
                child: Scrollbar(
                  child: new ListView.builder(
                    padding: const EdgeInsets.all(8),
                    shrinkWrap: true,
                    itemCount: listEmploi.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 150,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(25.0),
                                  child: new Container(
                                      child: Image.asset(
                                          'assets/img/ffelogo.jpg'))),
                              new Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text(listEmploi[index]),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )),
              BottomBarWidget()
            ],
          ),
        ),
      ),
    ));
  }
}
