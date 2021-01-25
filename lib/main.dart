import 'package:flutter/material.dart';
import 'package:kavaloccaz/equides.dart';
import 'package:kavaloccaz/equipements.dart';
import 'package:kavaloccaz/home.dart';
import 'package:kavaloccaz/listeChevaux.dart';
import 'package:kavaloccaz/listeEquipementCavalier.dart';
import 'package:kavaloccaz/listeEquipementCheval.dart';
import 'package:kavaloccaz/listePoneys.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kavaloccaz/testFirebase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/equides': (context) => Equides(),
        '/equipements': (context) => Equipements(),
        '/equipements/cheval': (context) => FutureBuilder(
              future: _fbApp,
              // ignore: missing_return
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print("You have an error! ${snapshot.error.toString()}");
                  return Text("Something went wrong!");
                } else if (snapshot.hasData) {
                  return EquipementsCheval();
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
        '/equipements/cavalier': (context) => FutureBuilder(
              future: _fbApp,
              // ignore: missing_return
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print("You have an error! ${snapshot.error.toString()}");
                  return Text("Something went wrong!");
                } else if (snapshot.hasData) {
                  return EquipementsCavalier();
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
        '/equides/chevaux': (context) => FutureBuilder(
              future: _fbApp,
              // ignore: missing_return
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print("You have an error! ${snapshot.error.toString()}");
                  return Text("Something went wrong!");
                } else if (snapshot.hasData) {
                  return Chevaux();
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
        '/equides/poneys': (context) => FutureBuilder(
              future: _fbApp,
              // ignore: missing_return
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print("You have an error! ${snapshot.error.toString()}");
                  return Text("Something went wrong!");
                } else if (snapshot.hasData) {
                  return Poneys();
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
        '/testFirebase': (context) => TestFirebase(),
      },
    );
  }
}
