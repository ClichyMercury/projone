import 'package:flutter/material.dart';
import 'package:projone/pages/page1.dart';
import 'package:projone/pages/stat-widget.dart';

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Profile Vendeur",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 55,
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            "Monica Gastembidé",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            "@moGastemb42",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.pink),
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              statwidget("Notes", Colors.pink, 18, "4.5/5",
                  Color.fromARGB(255, 152, 18, 119), 12),
              statwidget("Location", Colors.pink, 18, "Abidjan",
                  Color.fromARGB(255, 152, 18, 119), 12),
              statwidget("realestate", Colors.pink, 18, "market House",
                  Color.fromARGB(255, 152, 18, 119), 12),
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              statwidget("age", Colors.pink, 18, "34",
                  Color.fromARGB(255, 152, 18, 119), 12),
              statwidget("téléphone", Colors.pink, 18, "0132564389",
                  Color.fromARGB(255, 152, 18, 119), 12),
              statwidget("mail", Colors.pink, 18, "moGastemb@icloud.com",
                  Color.fromARGB(255, 152, 18, 119), 12),
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {},
                color: Colors.black,
                child: Text(
                  "S'abonner",
                  style: TextStyle(color: Colors.white),
                ),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
              ),
              SizedBox(
                width: 12.0,
              ),
              FlatButton(
                color: Colors.pink,
                onPressed: () {},
                child: Text("Message"),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 18.0,
              thickness: 0.6,
              color: Colors.pink,
            ),
          ),
          Expanded(
              child: Container(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    child: (TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.pink),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => MyHomePage()));
                      },
                      child: Text('retour'),
                    )),
                    decoration: BoxDecoration(),
                  );
                }),
          ))
        ],
      )),
    );
  }
}
