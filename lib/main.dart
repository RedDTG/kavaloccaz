import 'package:flutter/material.dart';
import 'package:kavaloccaz/equides.dart';
import 'package:kavaloccaz/equipements.dart';
import 'package:kavaloccaz/home.dart';

void main() => runApp(MaterialApp(
      //initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/equides': (context) => Equides(),
        '/equipements': (context) => Equipements()
      },
    ));
