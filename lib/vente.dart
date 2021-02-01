import 'package:flutter/material.dart';
import 'package:kavaloccaz/_bottomBar.dart';

class Vente extends StatelessWidget {
  Vente();

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
              margin: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 0),
              child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Container(
                        margin: EdgeInsets.only(right: 5),
                        width: largeur * 0.35,
                        child: Image.asset('assets/img/logo.png')),
                    new Text('VENDRE',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'ArchitectsDaughter',
                            color: Color(0xFFF6CC33)))
                  ])),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              new Column(
                children: [
                  new Container(
                    padding: EdgeInsets.only(bottom: 10),
                    width: largeur * 0.4,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(20))),
                    child: new Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/f/f7/Mangalarga_Marchador_Conforma%C3%A7%C3%A3o.jpg'),
                  ),
                  new Container(
                      width: largeur * 0.4,
                      height: hauteur * 0.06,
                      child: new RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/vente/cheval');
                        },
                        child: new Text('Cheval',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'ArchitectsDaughter')),
                        color: Color(0xFFCDCDCD),
                        textColor: Color(0xFF030082),
                        elevation: 7.5,
                      )),
                ],
              ),
              new Column(
                children: [
                  new Container(
                    padding: EdgeInsets.only(bottom: 10),
                    width: largeur * 0.4,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(20))),
                    child: new Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/f/f7/Mangalarga_Marchador_Conforma%C3%A7%C3%A3o.jpg'),
                  ),
                  new Container(
                      width: largeur * 0.4,
                      height: hauteur * 0.06,
                      child: new RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/vente/poney');
                        },
                        child: new Text('Poney',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'ArchitectsDaughter')),
                        color: Color(0xFFCDCDCD),
                        textColor: Color(0xFF030082),
                        elevation: 7.5,
                      )),
                ],
              )
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              new Column(
                children: [
                  new Container(
                    padding: EdgeInsets.only(bottom: 10),
                    width: largeur * 0.4,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(20))),
                    child: new Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/f/f7/Mangalarga_Marchador_Conforma%C3%A7%C3%A3o.jpg'),
                  ),
                  new Container(
                      width: largeur * 0.4,
                      height: hauteur * 0.06,
                      child: new RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/vente/cheval');
                        },
                        child: new Text('Equipement cheval',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'ArchitectsDaughter')),
                        color: Color(0xFFCDCDCD),
                        textColor: Color(0xFF030082),
                        elevation: 7.5,
                      )),
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  new Container(
                    padding: EdgeInsets.only(bottom: 10),
                    width: largeur * 0.4,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(20))),
                    child: new Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/f/f7/Mangalarga_Marchador_Conforma%C3%A7%C3%A3o.jpg'),
                  ),
                  new Container(
                      width: largeur * 0.4,
                      height: hauteur * 0.06,
                      child: new RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/vente/poney');
                        },
                        child: new Text('Equipement cavalier',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'ArchitectsDaughter')),
                        color: Color(0xFFCDCDCD),
                        textColor: Color(0xFF030082),
                        elevation: 7.5,
                      )),
                ],
              )
            ],
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
        ],
      ),
    )));
  }
}
