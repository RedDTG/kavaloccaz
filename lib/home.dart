import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '_bottomBar.dart';
//import 'equides.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

bool color = false;

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    double hauteur = MediaQuery.of(context).size.height;

    return Scaffold(
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
            new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Container(
                  margin: EdgeInsets.only(top: 30),
                  child: new Image.asset('assets/img/logo.png'),
                  width: (largeur / 2),
                ),
                new Text('Pour de nouvelles aventures cavalières !',
                    style: TextStyle(
                      fontFamily: 'ArchitectsDaughter',
                      color: Color(0xFFF6CC33),
                    ))
              ],
            ),
            new Container(
                width: largeur * 0.70,
                height: hauteur * 0.08,
                child: new RaisedButton(
                  onPressed: () {},
                  child: new Text('EQUIPEMENTS',
                      style: TextStyle(fontFamily: 'ArchitectsDaughter')),
                  color: Color(0xFFCDCDCD),
                  textColor: Color(0xFF030082),
                  elevation: 7.5,
                )),
            new Container(
                width: largeur * 0.70,
                height: hauteur * 0.08,
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/equides');
                  },
                  child: new Text('EQUIDÉS',
                      style: TextStyle(fontFamily: 'ArchitectsDaughter')),
                  color: Color(0xFFCDCDCD),
                  textColor: Color(0xFF030082),
                  elevation: 7.5,
                )),
            new Container(
                width: largeur * 0.70,
                height: hauteur * 0.08,
                child: new RaisedButton(
                  onPressed: () {},
                  child: new Text('EMPLOIS',
                      style: TextStyle(fontFamily: 'ArchitectsDaughter')),
                  color: Color(0xFFCDCDCD),
                  textColor: Color(0xFF030082),
                  elevation: 7.5,
                )),
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
            /*new Container(
              width: largeur,
              height: hauteur * 0.1,
              color: Color(0xFFB6CFFF),
              alignment: Alignment.center,
              child: new Text(
                'bottombar',
                style: TextStyle(color: Colors.black),
                textScaleFactor: 1.2,
              ),
            )*/
            BottomBarWidget(),
          ],
        ),
      )),
    );
  }
}
