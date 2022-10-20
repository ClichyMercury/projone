import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../pages/page1.dart';

openPopup(context) {
  Alert(
      context: context,
      title: "LOGIN",
      content: Column(
        children: <Widget>[
          TextField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.account_circle),
              labelText: 'Username',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'Password',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            "LOGIN",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        DialogButton(
            child: const Text(
              "EXIT",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => MyHomePage()));
            })
      ]).show();
}
