import 'package:flutter/material.dart';
import 'package:kavaloccaz/emplois.dart';
import 'package:kavaloccaz/equides.dart';
import 'package:kavaloccaz/equipements.dart';
import 'package:kavaloccaz/home.dart';

void main() => runApp(MaterialApp(
      //initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/equides': (context) => Equides('Equidés'),
        '/equipements': (context) => Equipements('Equipements'),
        '/emplois': (context) => Emplois('Emplois')
      },
    ));
