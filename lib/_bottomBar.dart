import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 2.0, color: Colors.white)),
          color: Color(0xFFB6CFFF)),
      width: largeur,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          new Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: 70,
            height: 70,
            child: IconButton(
              icon: Image.asset('assets/icons/horse.png'),
              onPressed: () {
                Navigator.pushNamed(context, '/equides');
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: 70,
            height: 70,
            child: IconButton(
              icon: Image.asset('assets/icons/helmet.png'),
              onPressed: () {
                Navigator.pushNamed(context, '/equipements');
              },
            ),
          ),
          new Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            alignment: Alignment(0.0, -40.0),
            child: new Container(
              width: 67,
              height: 67,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white /*(0xFFDCDCDC)*/),
              child: IconButton(
                icon: Image.asset('assets/icons/add.png'),
                onPressed: () {
                  Navigator.pushNamed(context, '/Vente/vendreProduit');
                },
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: 70,
            height: 70,
            child: IconButton(
              icon: Image.asset('assets/icons/job.png'),
              onPressed: () {},
            ),
          ),
          new Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: 70,
            height: 70,
            child: IconButton(
              icon: Image.asset('assets/icons/account.png'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
