import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kavaloccaz/Emplois/emplois.dart';
import 'package:kavaloccaz/Equides/equides.dart';
import 'package:kavaloccaz/Equipements/equipements.dart';
import 'package:kavaloccaz/Equipements/vendreEquipementCavalier.dart';
import 'package:kavaloccaz/Equipements/vendreEquipementEquide.dart';
import 'package:kavaloccaz/home.dart';
import 'package:kavaloccaz/Equides/listeChevaux.dart';
import 'package:kavaloccaz/Equipements/listeEquipementCavalier.dart';
import 'package:kavaloccaz/Equipements/listeEquipementCheval.dart';
import 'package:kavaloccaz/Equides/listePoneys.dart';
import 'package:kavaloccaz/Equides/VendreCheval.dart';
import 'package:kavaloccaz/Equides/VendrePoney.dart';
import 'package:kavaloccaz/vente.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/emplois': (context) => Emplois("Emplois"),
        '/equides': (context) => Equides(),
        '/equipements': (context) => Equipements(),
        '/equipements/cheval': (context) => EquipementsCheval(),
        '/equipements/cavalier': (context) => EquipementsCavalier(),
        '/equides/chevaux': (context) => Chevaux(),
        '/equides/poneys': (context) => Poneys(),
        '/vente/cheval': (context) => VendreCheval(),
        '/vente/poney': (context) => VendrePoney(),
        '/vente': (context) => Vente(),
        '/vente/vendreEquipementEquide': (context) => VendreEquipementEquide(),
        '/vente/vendreEquipementCavalier': (context) => VendreEquipementCavalier()
      },
    );
  }
}
