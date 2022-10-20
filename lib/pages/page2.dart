import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projone/pages/page1.dart';

class Page2 extends StatefulWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          // ignore: prefer_const_constructors
          builder: (_) => MyHomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 17, 184),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo_size_invert.jpg',
              height: 120,
            ),
            SizedBox(
              height: 45,
            ),
            CircularProgressIndicator(
              color: Color.fromARGB(255, 71, 35, 157),
            )
          ],
        ),
      ),
    );
  }
}
