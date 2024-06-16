import 'package:crypto_track/screens/takip_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/coin_controller.dart';

var index_v;

class detail_screen extends StatelessWidget {
  final CoinController controller = Get.put(CoinController());
  detail_screen({super.key});
  takip_screen takip = takip_screen();
  get_index(int index) {
    index_v = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          controller.coinlist[index_v].name,
          style: const TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Color.fromARGB(255, 43, 56, 61),
      ),
      backgroundColor: Color.fromARGB(255, 70, 91, 99),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Container(
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 57, 66, 70),
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: GestureDetector(
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 75, 87, 92),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child:
                              Image.network(controller.coinlist[index_v].image),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.coinlist[index_v].symbol.toUpperCase(),
                          style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 230, 195, 43),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 80),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          controller.coinlist[index_v].name.toString(),
                          style: TextStyle(
                              fontSize: 22,
                              color: const Color.fromARGB(255, 230, 195, 43),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 57, 66, 70),
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Row(
                children: [
                  SizedBox(width: 50),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 150,
                      top: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Son fiyat ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 231, 223, 186),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.coinlist[index_v].name,
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 231, 223, 186),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  controller.coinlist[index_v].currentPrice
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 204, 194, 150),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Oransal",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 231, 223, 186),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "değişim",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 231, 223, 186),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.coinlist[index_v]
                                      .priceChangePercentage24H
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 204, 194, 150),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Günlük ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 231, 223, 186),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "değişim ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 231, 223, 186),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.coinlist[index_v].priceChange24H
                                      .toInt()
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 204, 194, 150),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Günün",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 231, 223, 186),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "yüksek değeri",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 231, 223, 186),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.coinlist[index_v].high24H
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 204, 194, 150),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              "Son fiyat ",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 231, 223, 186),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.coinlist[index_v].currentPrice
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 204, 194, 150),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 150,
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
                                  "Takibe al",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                onPressed: () {
                                  takip.get_index_takip(index_v);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
