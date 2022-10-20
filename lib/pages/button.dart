import 'package:flutter/material.dart';

class Boutton extends StatelessWidget {
  final BuildContext context;
  final String homeText;
  final String descText;
  final Color? homeColor;
  final Color? descColor;
  final Color? iconColor;
  final Color? borderColor;
  final double? iconSize;
  final IconData icon;
  final double radius;
  final Widget? route;
  final double? width;
  final double? height;
  const Boutton({
    Key? key,
    this.route,
    this.descColor,
    this.homeColor,
    this.iconColor,
    this.width,
    this.height,
    this.borderColor,
    this.iconSize,
    required this.context,
    required this.homeText,
    required this.descText,
    required this.icon,
    required this.radius,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => route!,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            color: Colors.grey[200],
            border: Border.all(color: borderColor ?? Colors.deepPurple)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            SizedBox(
              height: 10,
            ),
            Text(homeText),
            SizedBox(
              height: 10,
            ),
            Text(descText),
          ],
        ),
      ),
    );
  }
}
