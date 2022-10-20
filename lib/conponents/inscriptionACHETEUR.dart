import 'package:flutter/material.dart';
import 'package:projone/pages/page1.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class inscriptionA extends StatelessWidget {
  const inscriptionA({Key? key}) : super(key: key);

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
                  child: Text('créer votre compte ACHETEUR ici',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'nom Complet',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'pseudo',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'mot de passe',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'confirmer le mot de passe',
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
