import 'package:crypto_track/screens/takip_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'detail_screen.dart';
import 'main_screen.dart';

class motherscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 91, 99),
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Crypto track",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          backgroundColor: const Color.fromARGB(255, 43, 56, 61)),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 150, top: 150, right: 50, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset('lib/assets/gifs/as.gif'),
            ),
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                        Color.fromARGB(255, 69, 110, 127),
                        Color.fromARGB(255, 56, 95, 109),
                        Color.fromARGB(255, 33, 52, 59)
                      ])),
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "Coinler",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => main_screen(),
                          ));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                        Color.fromARGB(255, 69, 110, 127),
                        Color.fromARGB(255, 56, 95, 109),
                        Color.fromARGB(255, 33, 52, 59)
                      ])),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextButton(
                    child: Text(
                      "Favoriler",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => takip_screen(),
                          ));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
