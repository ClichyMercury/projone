import 'package:flutter/material.dart';

Widget statwidget(String title, Color Tcolor, double Tsize, String stat,
    Color Scolor, double Ssize) {
  return Expanded(
      child: Column(
    children: [
      Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: Tsize, color: Tcolor),
      ),
      Text(
        stat,
        style: TextStyle(
          color: Scolor,
          fontSize: Ssize,
        ),
      )
    ],
  ));
}
