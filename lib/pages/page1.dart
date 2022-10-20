import 'package:flutter/material.dart';
import 'package:projone/conponents/Linebutton.dart';
import 'package:projone/conponents/homebull.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:projone/conponents/inscriptionACHETEUR.dart';
import 'package:projone/conponents/inscriptionVENDEUR.dart';
import 'package:projone/conponents/pop_up_Login.dart';
import 'package:projone/pages/login.dart';
import 'package:projone/pages/profilepage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> sadio = [
    "assets/images/logo_size_invert.jpg",
    "assets/images/house1.png",
    "assets/images/house2.png",
    "assets/images/house3.png"
  ];
  int curID = 0;

  get assets => null;

  get images => null;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var logo_size_invert;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text("domArt realEstate"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 255, 0, 221), Colors.red],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/images/logo_size.jpg"),
                CarouselSlider(
                  items: sadio
                      .map((item) => Container(
                            child: Center(
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                                //width: 1000,
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      height: 500),
                ),
                SizedBox(height: 10),
                Center(
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 15,
                    children: [
                      Homebull(
                          iconmod: Icons.get_app_outlined,
                          iconcolor: Color.fromARGB(255, 255, 255, 255),
                          iconsize: 25,
                          Titre: "ACHETEUR",
                          titrecolor: Color.fromARGB(255, 255, 255, 255),
                          titresize: 15,
                          desc: "acquerer votre propriété aux meilleurs prix",
                          descsize: 8,
                          desccolor: Color.fromARGB(255, 255, 255, 255),
                          containercolor: Color.fromARGB(255, 255, 0, 221),
                          boxcolor: Colors.black,
                          widthcontainer: 160,
                          heightContainer: 160,
                          rad: 10,
                          context: context,
                          lien: inscriptionA()),
                      Homebull(
                          iconmod: Icons.send,
                          iconcolor: Color.fromARGB(255, 255, 0, 221),
                          iconsize: 25,
                          Titre: "VENDEUR",
                          titrecolor: Color.fromARGB(255, 255, 0, 221),
                          titresize: 15,
                          desc: "Vendez votre proprité sans frais ",
                          descsize: 8,
                          desccolor: Color.fromARGB(255, 255, 0, 221),
                          containercolor: Color.fromARGB(255, 255, 255, 255),
                          boxcolor: Colors.black,
                          widthcontainer: 160,
                          heightContainer: 160,
                          rad: 10,
                          context: context,
                          lien: inscriptionV()),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 15,
                  children: [
                    Homebull(
                        iconmod: Icons.account_balance_sharp,
                        iconcolor: Color.fromARGB(255, 253, 0, 202),
                        iconsize: 20,
                        containercolor: Color.fromARGB(255, 0, 0, 0),
                        boxcolor: Colors.black,
                        widthcontainer: 65,
                        heightContainer: 65,
                        rad: 150),
                    Homebull(
                        iconmod: Icons.tab,
                        iconcolor: Color.fromARGB(255, 255, 0, 221),
                        iconsize: 20,
                        containercolor: Color.fromARGB(255, 0, 0, 0),
                        boxcolor: Colors.black,
                        widthcontainer: 65,
                        heightContainer: 65,
                        rad: 150),
                    Homebull(
                        iconmod: Icons.eco_rounded,
                        iconcolor: Color.fromARGB(255, 255, 0, 221),
                        iconsize: 20,
                        containercolor: Color.fromARGB(255, 0, 0, 0),
                        boxcolor: Colors.black,
                        widthcontainer: 65,
                        heightContainer: 65,
                        rad: 150,
                        context: context,
                        lien: profile()),
                    Homebull(
                        iconmod: Icons.login,
                        iconcolor: Color.fromARGB(255, 255, 0, 221),
                        iconsize: 20,
                        containercolor: Color.fromARGB(255, 0, 0, 0),
                        boxcolor: Colors.black,
                        widthcontainer: 65,
                        heightContainer: 65,
                        rad: 150,
                        context: context,
                        lien: Login())
                  ],
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 15,
                  children: [
                    Image.asset(
                      "assets/images/house4.png",
                      width: 200,
                      height: 200,
                    ),
                    Image.asset(
                      "assets/images/house5.png",
                      width: 200,
                      height: 200,
                    ),
                    Image.asset(
                      "assets/images/house6.png",
                      width: 200,
                      height: 200,
                    ),
                    Image.asset(
                      "assets/images/house7.png",
                      width: 200,
                      height: 200,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    lButton(
                      iconmood: Icons.login,
                      iconmoodcolor: Color.fromARGB(255, 255, 0, 221),
                      mot: "connectez vous",
                      motcolor: Color.fromARGB(255, 0, 0, 0),
                      iconmood2: Icons.mail,
                      iconmood2color: Color.fromARGB(255, 255, 0, 221),
                    ),
                    Divider(),
                    lButton(
                      iconmood: Icons.emoji_symbols,
                      iconmoodcolor: Color.fromARGB(255, 255, 0, 221),
                      mot: "Ma liste de souhaits",
                      motcolor: Color.fromARGB(255, 0, 0, 0),
                      iconmood2: Icons.heart_broken,
                      iconmood2color: Color.fromARGB(255, 255, 0, 221),
                    ),
                    Divider(),
                    lButton(
                      iconmood: Icons.emoji_symbols,
                      iconmoodcolor: Color.fromARGB(255, 255, 0, 221),
                      mot: "recherche personnalisé",
                      motcolor: Color.fromARGB(255, 0, 0, 0),
                      iconmood2: Icons.zoom_in,
                      iconmood2color: Color.fromARGB(255, 255, 0, 221),
                    ),
                    Divider(),
                    lButton(
                      iconmood: Icons.emoji_symbols,
                      iconmoodcolor: Color.fromARGB(255, 255, 0, 221),
                      mot: "retour à la page precedente",
                      motcolor: Color.fromARGB(255, 0, 0, 0),
                      iconmood2: Icons.u_turn_left,
                      iconmood2color: Color.fromARGB(255, 255, 0, 221),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            currentIndex: curID,
            onTap: (index) => setState(() => curID = index),
            iconSize: 35,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Acceuil",
                  backgroundColor: Colors.pink),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: "Messages",
                  backgroundColor: Colors.pink),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  label: "Publier",
                  backgroundColor: Colors.pink),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favoris",
                  backgroundColor: Colors.pink),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin),
                  label: "Profil",
                  backgroundColor: Colors.pink),
            ]));
  }
}
