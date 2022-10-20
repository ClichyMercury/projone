import 'package:flutter/material.dart';

class MenuDeroulant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Container(
        color: Colors.orange,
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
