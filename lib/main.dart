import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kavaloccaz/emplois.dart';
import 'package:kavaloccaz/equides.dart';
import 'package:kavaloccaz/equipements.dart';
import 'package:kavaloccaz/home.dart';
import 'package:kavaloccaz/listeChevaux.dart';
import 'package:kavaloccaz/listeEquipementCavalier.dart';
import 'package:kavaloccaz/listeEquipementCheval.dart';
import 'package:kavaloccaz/listePoneys.dart';
import 'package:kavaloccaz/testFirebase.dart';
import 'package:kavaloccaz/Vente/VendreCheval.dart';
import 'package:kavaloccaz/Vente/VendrePoney.dart';
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
      debugShowCheckedModeBanner: true,
      routes: {
        '/': (context) => Home(),
        '/emplois': (context) => Emplois("Emplois"),
        '/equides': (context) => Equides(),
        '/equipements': (context) => Equipements(),
        '/equipements/cheval': (context) => EquipementsCheval(),
        '/equipements/cavalier': (context) => EquipementsCavalier(),
        '/equides/chevaux': (context) => Chevaux(),
        '/equides/poneys': (context) => Poneys(),
        '/testFirebase': (context) => TestFirebase(),
        '/vente/cheval': (context) => VendreCheval(),
        '/vente/poney': (context) => VendrePoney(),
        '/vente': (context) => Vente()
      },
    );
  }
}
