import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kavaloccaz/_bottomBar.dart';

// ignore: must_be_immutable
class Poneys extends StatelessWidget {
  Poneys();

  FirebaseFirestore bdd = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    double hauteur = MediaQuery.of(context).size.height;
    CollectionReference poneys =
        bdd.collection('produits').doc('equides').collection('poneys');

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
                    new StreamBuilder<QuerySnapshot>(
                        stream: poneys.snapshots(),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError) {
                            return Text("Allo Houston ? On a un problème !");
                          }

                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Text("Loading...");
                          }

                          return SizedBox(
                              height: 200.0,
                              child: ListView.builder(
                                itemCount: snapshot.data.docs.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return new Container(
                                    margin: EdgeInsets.only(
                                        left: 15, right: 15, top: 5, bottom: 5),
                                    width: largeur,
                                    height: hauteur * 0.22,
                                    child: new Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: new Container(
                                        child: new Row(
                                          children: [
                                            new Container(
                                                child: new Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          'assets/img/produitPoney.jpg'))),
                                              width: largeur * 0.35,
                                              margin: EdgeInsets.only(
                                                  top: 15,
                                                  bottom: 15,
                                                  left: 15),
                                            )),
                                            new Container(
                                              margin: EdgeInsets.all(15),
                                              width: largeur * 0.41,
                                              child: new Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  new Container(
                                                      alignment:
                                                          Alignment.center,
                                                      child: new Text(
                                                          snapshot
                                                              .data.docs[index]
                                                              .data()['nom'],
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'OpenSans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 15))),
                                                  new Container(
                                                      margin: EdgeInsets.only(
                                                        bottom: 5,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      child: new Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            new Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(3),
                                                                child: Text(
                                                                  snapshot
                                                                      .data
                                                                      .docs[
                                                                          index]
                                                                      .data()['race'],
                                                                  style: TextStyle(
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic),
                                                                )),
                                                            new Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(3),
                                                                child: Text(
                                                                    snapshot
                                                                            .data
                                                                            .docs[
                                                                                index]
                                                                            .data()[
                                                                        'taille'],
                                                                    style: TextStyle(
                                                                        fontStyle:
                                                                            FontStyle.italic))),
                                                            new Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(3),
                                                                child: Text(
                                                                    snapshot
                                                                            .data
                                                                            .docs[
                                                                                index]
                                                                            .data()[
                                                                        'lieu'],
                                                                    style: TextStyle(
                                                                        fontStyle:
                                                                            FontStyle.italic)))
                                                          ])),
                                                  new Container(
                                                      child: new Text(
                                                    snapshot.data.docs[index]
                                                        .data()['description'],
                                                    style: TextStyle(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:
                                                        TextAlign.justify,
                                                    maxLines: 3,
                                                  ))
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ));
                        })
                  ])))),
                  BottomBarWidget()
                ]))));
  }
}
