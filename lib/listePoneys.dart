import 'package:flutter/material.dart';
import 'package:kavaloccaz/_bottomBar.dart';

class Poneys extends StatelessWidget {
  Poneys();
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
                child: new Column(children: [
                  Expanded(
                      child: new SizedBox(
                          child: new Scrollbar(
                              child: new ListView(children: [
                    new Container(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text(
                                'RECOMMANDÉS',
                                style: TextStyle(
                                    fontFamily: 'ArchitectsDaughter',
                                    color: Color(0xFFF6CC33),
                                    fontSize: 28),
                              ),
                              new IconButton(
                                  icon: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  onPressed: () {})
                            ])),
                    new Container(
                      margin: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      width: largeur,
                      height: hauteur * 0.22,
                      child: new Card(
                        color: Color(0xFF9B7565),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: new Container(
                          child: new Row(
                            children: [
                              new Container(
                                  child: new Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/img/produitPoney.jpg'))),
                                width: largeur * 0.35,
                                margin: EdgeInsets.only(
                                    top: 15, bottom: 15, left: 15),
                              )),
                              new Container(
                                margin: EdgeInsets.all(15),
                                width: largeur * 0.41,
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    new Container(
                                        alignment: Alignment.center,
                                        child: new Text('Kéminion',
                                            style: TextStyle(
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15))),
                                    new Container(
                                        margin: EdgeInsets.only(
                                          bottom: 5,
                                        ),
                                        alignment: Alignment.center,
                                        child: new Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text(
                                                    'Race',
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  )),
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text('Taille',
                                                      style: TextStyle(
                                                          fontStyle: FontStyle
                                                              .italic))),
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text('Lieu',
                                                      style: TextStyle(
                                                          fontStyle: FontStyle
                                                              .italic)))
                                            ])),
                                    new Container(
                                        child: new Text(
                                      "D'or descendaient des comme infusé teignant exaltée, eau et enfants fortes soleil jaune d'azur et. Les travers repeché au atroce.",
                                      style: TextStyle(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                      maxLines: 3,
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      width: largeur,
                      height: hauteur * 0.22,
                      child: new Card(
                        color: Color(0xFF9B7565),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: new Container(
                          child: new Row(
                            children: [
                              new Container(
                                  child: new Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/img/produitPoney.jpg'))),
                                width: largeur * 0.35,
                                margin: EdgeInsets.only(
                                    top: 15, bottom: 15, left: 15),
                              )),
                              new Container(
                                margin: EdgeInsets.all(15),
                                width: largeur * 0.41,
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    new Container(
                                        alignment: Alignment.center,
                                        child: new Text('Kéminion',
                                            style: TextStyle(
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15))),
                                    new Container(
                                        margin: EdgeInsets.only(
                                          bottom: 5,
                                        ),
                                        alignment: Alignment.center,
                                        child: new Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text(
                                                    'Race',
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  )),
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text('Taille',
                                                      style: TextStyle(
                                                          fontStyle: FontStyle
                                                              .italic))),
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text('Lieu',
                                                      style: TextStyle(
                                                          fontStyle: FontStyle
                                                              .italic)))
                                            ])),
                                    new Container(
                                        child: new Text(
                                      "D'or descendaient des comme infusé teignant exaltée, eau et enfants fortes soleil jaune d'azur et. Les travers repeché au atroce.",
                                      style: TextStyle(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                      maxLines: 3,
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      width: largeur,
                      height: hauteur * 0.22,
                      child: new Card(
                        color: Color(0xFF9B7565),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: new Container(
                          child: new Row(
                            children: [
                              new Container(
                                  child: new Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/img/produitPoney.jpg'))),
                                width: largeur * 0.35,
                                margin: EdgeInsets.only(
                                    top: 15, bottom: 15, left: 15),
                              )),
                              new Container(
                                margin: EdgeInsets.all(15),
                                width: largeur * 0.41,
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    new Container(
                                        alignment: Alignment.center,
                                        child: new Text('Kéminion',
                                            style: TextStyle(
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15))),
                                    new Container(
                                        margin: EdgeInsets.only(
                                          bottom: 5,
                                        ),
                                        alignment: Alignment.center,
                                        child: new Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text(
                                                    'Race',
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  )),
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text('Taille',
                                                      style: TextStyle(
                                                          fontStyle: FontStyle
                                                              .italic))),
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text('Lieu',
                                                      style: TextStyle(
                                                          fontStyle: FontStyle
                                                              .italic)))
                                            ])),
                                    new Container(
                                        child: new Text(
                                      "D'or descendaient des comme infusé teignant exaltée, eau et enfants fortes soleil jaune d'azur et. Les travers repeché au atroce.",
                                      style: TextStyle(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                      maxLines: 3,
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      width: largeur,
                      height: hauteur * 0.22,
                      child: new Card(
                        color: Color(0xFF9B7565),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: new Container(
                          child: new Row(
                            children: [
                              new Container(
                                  child: new Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/img/produitPoney.jpg'))),
                                width: largeur * 0.35,
                                margin: EdgeInsets.only(
                                    top: 15, bottom: 15, left: 15),
                              )),
                              new Container(
                                margin: EdgeInsets.all(15),
                                width: largeur * 0.41,
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    new Container(
                                        alignment: Alignment.center,
                                        child: new Text('Kéminion',
                                            style: TextStyle(
                                                fontFamily: 'OpenSans',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15))),
                                    new Container(
                                        margin: EdgeInsets.only(
                                          bottom: 5,
                                        ),
                                        alignment: Alignment.center,
                                        child: new Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text(
                                                    'Race',
                                                    style: TextStyle(
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  )),
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text('Taille',
                                                      style: TextStyle(
                                                          fontStyle: FontStyle
                                                              .italic))),
                                              new Container(
                                                  margin: EdgeInsets.all(3),
                                                  child: Text('Lieu',
                                                      style: TextStyle(
                                                          fontStyle: FontStyle
                                                              .italic)))
                                            ])),
                                    new Container(
                                        child: new Text(
                                      "D'or descendaient des comme infusé teignant exaltée, eau et enfants fortes soleil jaune d'azur et. Les travers repeché au atroce.",
                                      style: TextStyle(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                      maxLines: 3,
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ])))),
                  BottomBarWidget()
                ]))));
  }
}
