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

  final List<String> descList = [
    "Nullam lacinia congue purus, facilisis maximus tellus bibendum eufacilisis maximus tellus bibendum eu.",
    "Nullam lacinia congue purus, facilisis maximus tellus bibendum eu.",
    "Nullam lacinia congue purus, facilisis maximus tellus bibendum eu.",
    "Nullam lacinia congue purus, facilisis maximus tellus bibendum eu.",
    "Nullam lacinia congue purus, facilisis maximus tellus bibendum eu.",
    "Nullam lacinia congue purus, facilisis maximus tellus bibendum eu.",
  ];

  final List<String> positionList = [
    "44000 Nantes",
    "44000 Nantes",
    "44000 Nantes",
    "44000 Nantes",
    "44000 Nantes",
    "44000 Nantes",
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
              topTitle(largeur),
              listView(positionList, descList, listEmploi, largeur, hauteur),
              BottomBarWidget()
            ],
          ),
        ),
      ),
    ));
  }
}

Widget topTitle(largeur) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    new Container(
      margin: EdgeInsets.only(top: 30, left: 20),
      child: new Image.asset('assets/img/logo.png'),
      width: (largeur / 3.5),
    ),
    new Container(
        width: (largeur / 3.5),
        margin: EdgeInsets.only(right: 20),
        child: new Text('Emplois',
            style: TextStyle(
                fontFamily: 'ArchitectsDaughter',
                color: Color(0xFFF6CC33),
                fontSize: 28))),
  ]);
}

Widget listView(positionList, descList, listEmploi, largeur, hauteur) {
  return Expanded(
    child: Scrollbar(
      child: new GridView.builder(
        padding: const EdgeInsets.all(15),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 8.0 / 10.0,
          crossAxisCount: 2,
        ),
        itemCount: listEmploi.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {},
              child: Card(
                  semanticContainer: true,
                  elevation: 7.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                image: AssetImage('assets/img/ffelogo.jpg'),
                                fit: BoxFit.fitHeight),
                          ),
                        )),
                        Container(
                            margin: EdgeInsets.only(
                                bottom: 10, left: 25, right: 25),
                            child: Text(
                              listEmploi[index],
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            )),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 25, right: 25),
                              child: Text(
                                descList[index],
                                style: TextStyle(
                                  fontSize: 9.0,
                                  fontFamily: 'OpenSans',
                                ),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                                maxLines: 4,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 2, bottom: 2, left: 2, right: 2),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              margin:
                                  EdgeInsets.only(left: 25, right: 25, top: 5),
                              child: Text(
                                positionList[index],
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 15, bottom: 15, left: 15),
                              child: Text(
                                '20/03/2021',
                                style: TextStyle(
                                    fontSize: 8.0,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(),
                                child: ClipOval(
                                  child: Material(
                                    color: Colors.white,
                                    child: InkWell(
                                      splashColor: Colors.red,
                                      child: SizedBox(
                                          width: 56,
                                          height: 56,
                                          child: Icon(Icons.favorite,
                                              color: Colors.red)),
                                      onTap: () {},
                                    ),
                                  ),
                                ))
                          ],
                        )
                      ])));
        },
      ),
    ),
  );
}
