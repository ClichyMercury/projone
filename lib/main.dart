import 'package:flutter/material.dart';
import 'package:projone/conponents/inscriptionACHETEUR.dart';
import 'package:projone/conponents/inscriptionVENDEUR.dart';
import 'package:projone/pages/page1.dart';
import 'package:projone/pages/page2.dart';
import 'package:projone/pages/profilepage.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'domArt realEstate',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Page2(),
    );
  }
}
