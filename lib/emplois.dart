import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kavaloccaz/home.dart';
import '_bottomBar.dart';

class Emplois extends StatelessWidget {
  String title;

  Emplois(String title) {
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
                new Column(children: [
                  new Container(
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                width: 3.0, color: Color(0xFF02155E)),
                            bottom: BorderSide(
                                width: 3.0, color: Color(0xFF02155E)),
                          ),
                          color: Color(0xFFB6CFFF)),
                      width: largeur,
                      height: 55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Container(
                              width: largeur / 2,
                              decoration: BoxDecoration(
                                  border: Border(
                                top: BorderSide(
                                    width: 2.0, color: Color(0xFF02155E)),
                                right: BorderSide(
                                    width: 1.0, color: Color(0xFF02155E)),
                              )),
                              child: new FlatButton(
                                  onPressed: null, child: Text("Je cherche"))),
                          new Container(
                              width: largeur / 2,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    width: 1.0, color: Color(0xFF02155E)),
                                top: BorderSide(
                                    width: 2.0, color: Color(0xFF02155E)),
                              )),
                              child: new FlatButton(
                                  onPressed: null, child: Text("Je propose")))
                        ],
                      )),
                  BottomBarWidget()
                ]),
              ],
            )),
      ),
    );
  }
}
