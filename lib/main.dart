import 'package:flutter/material.dart';
import 'package:kavaloccaz/equides.dart';
import 'package:kavaloccaz/equipements.dart';
import 'package:kavaloccaz/home.dart';
import 'package:kavaloccaz/listeChevaux.dart';
import 'package:kavaloccaz/listeEquipementCavalier.dart';
import 'package:kavaloccaz/listeEquipementCheval.dart';
import 'package:kavaloccaz/listePoneys.dart';

void main() => runApp(MaterialApp(
      //initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/equides': (context) => Equides(),
        '/equipements': (context) => Equipements(),
        '/equipements/cheval': (context) => EquipementsCheval(),
        '/equipements/cavalier': (context) => EquipementsCavalier(),
        '/equides/chevaux': (context) => Chevaux(),
        '/equides/poneys': (context) => Poneys()
      },
    ));
