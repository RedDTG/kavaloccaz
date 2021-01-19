import 'package:flutter/material.dart';
import 'package:kavaloccaz/_bottomBar.dart';

class Equipements extends StatelessWidget {
  Equipements();

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
                      new Container(
                          margin: EdgeInsets.only(
                              top: 20, right: 20, left: 20, bottom: 0),
                          child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new Container(
                                    margin: EdgeInsets.only(right: 5),
                                    width: largeur * 0.35,
                                    child: Image.asset('assets/img/logo.png')),
                                new Text('EQUIPEMENTS',
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontFamily: 'ArchitectsDaughter',
                                        color: Color(0xFFF6CC33)))
                              ])),
                      new Container(
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new Container(
                                child: new Column(
                                  children: [
                                    new Container(
                                        width: largeur * 0.4,
                                        height: hauteur * 0.06,
                                        child: new RaisedButton(
                                          onPressed: () {},
                                          child: new Text(
                                              'Equipements du cavalier',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily:
                                                      'ArchitectsDaughter')),
                                          color: Color(0xFFCDCDCD),
                                          textColor: Color(0xFF030082),
                                          elevation: 7.5,
                                        )),
                                    new Container(
                                        width: largeur * 0.4,
                                        height: hauteur * 0.4,
                                        child: new Image.asset(
                                            'assets/img/equipements.png'))
                                  ],
                                ),
                              ),
                              new Container(
                                child: new Column(
                                  children: [
                                    new Container(
                                        width: largeur * 0.4,
                                        height: hauteur * 0.06,
                                        child: new RaisedButton(
                                          onPressed: () {},
                                          child: new Text(
                                              'Equipement du cheval',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily:
                                                      'ArchitectsDaughter')),
                                          color: Color(0xFFCDCDCD),
                                          textColor: Color(0xFF030082),
                                          elevation: 7.5,
                                        )),
                                    new Container(
                                        width: largeur * 0.4,
                                        height: hauteur * 0.4,
                                        child: new Image.asset(
                                            'assets/img/selle.png'))
                                  ],
                                ),
                              )
                            ]),
                      ),
                      new Container(
                        width: largeur * 0.95,
                        height: hauteur * 0.08,
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: new Text(
                          'publicité',
                          style: TextStyle(color: Colors.black),
                          textScaleFactor: 1.2,
                        ),
                      ),
                      BottomBarWidget()
                    ]))));
  }
}
