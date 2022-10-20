import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../pages/page1.dart';

class inscriptionV extends StatelessWidget {
  const inscriptionV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 30.0,
        ),
        child: Form(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo_size_invert.jpg',
                  height: 100,
                  width: 100,
                ),
                Center(
                  child: Text('créer votre compte VENDEUR ici',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nom Complet',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Numero De Téléphone',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Domaine d'Expertise",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Promoteur Immobilier',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Pseudo',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mot De Passe',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirmer Le Mot De Passe',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                DialogButton(
                    child: Text(
                      "S'inscrire",
                    ),
                    onPressed: () {}),
                DialogButton(
                    child: Text('retour'),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => MyHomePage()));
                    }),
              ]),
        ),
      )),
    );
  }
}
