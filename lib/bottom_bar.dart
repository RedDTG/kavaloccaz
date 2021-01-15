import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    double hauteur = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 2.0, color: Colors.white)),
          color: Color(0xFFB6CFFF)),
      width: largeur,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new Container(
            child: Image.asset('assets/icons/horse.png'),
            width: 55,
            height: 55,
          ),
          new Container(
            child: Image.asset('assets/icons/helmet.png'),
            width: 55,
            height: 55,
          ),
          new Container(
            alignment: Alignment(0.0, -40.0),
            child: new Container(
              width: 67,
              height: 67,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFFFEAAC)),
              child: Image.asset('assets/icons/add.png'),
            ),
          ),
          new Container(
            child: Image.asset('assets/icons/job.png'),
            height: 50,
            width: 50,
          ),
          new Container(
              child: Image.asset('assets/icons/account.png'),
              height: 50,
              width: 50),
        ],
      ),
    );
  }
}
