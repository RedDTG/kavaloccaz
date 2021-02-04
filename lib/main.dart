import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:kavaloccaz/Vente/vendreProduit.dart';
import 'package:kavaloccaz/emplois.dart';
import 'package:kavaloccaz/equides.dart';
import 'package:kavaloccaz/equipements.dart';
import 'package:kavaloccaz/home.dart';
import 'package:kavaloccaz/listeChevaux.dart';
import 'package:kavaloccaz/listeEquipementCavalier.dart';
import 'package:kavaloccaz/listeEquipementCheval.dart';
import 'package:kavaloccaz/listePoneys.dart';
import 'package:kavaloccaz/testFirebase.dart';
import 'package:kavaloccaz/Vente/vendreCheval.dart';
import 'package:kavaloccaz/Vente/vendrePoney.dart';
=======
import 'package:kavaloccaz/Emplois/emplois.dart';
import 'package:kavaloccaz/Equides/equides.dart';
import 'package:kavaloccaz/Equipements/equipements.dart';
import 'package:kavaloccaz/home.dart';
import 'package:kavaloccaz/Equides/listeChevaux.dart';
import 'package:kavaloccaz/Equipements/listeEquipementCavalier.dart';
import 'package:kavaloccaz/Equipements/listeEquipementCheval.dart';
import 'package:kavaloccaz/Equides/listePoneys.dart';
import 'package:kavaloccaz/Equides/VendreCheval.dart';
import 'package:kavaloccaz/Equides/VendrePoney.dart';
import 'package:kavaloccaz/vente.dart';
>>>>>>> red

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
<<<<<<< HEAD
        '/testFirebase': (context) => TestFirebase(),
        '/Vente/vendreCheval': (context) => VendreCheval(),
        '/Vente/vendrePoney': (context) => VendrePoney(),
        '/Vente/vendreProduit': (context) => VendreProduit()
=======
        '/vente/cheval': (context) => VendreCheval(),
        '/vente/poney': (context) => VendrePoney(),
        '/vente': (context) => Vente()
>>>>>>> red
      },
    );
  }
}
