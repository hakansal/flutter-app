import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/coin_controller.dart';

var index_v;
var button_count = 0;

class takip_screen extends StatelessWidget {
  final CoinController controller = Get.put(CoinController());

  get_index_takip(int index) {
    index_v = index;
    button_count = button_count + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Takibe alınanlar",
            style: const TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          backgroundColor: Color.fromARGB(255, 43, 56, 61),
        ),
        backgroundColor: Color.fromARGB(255, 70, 91, 99),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView.builder(
                  itemCount: button_count,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 57, 66, 70),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Image.network(
                                          controller.coinlist[index_v].image),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          controller.coinlist[index_v].symbol
                                              .toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      Text(controller.coinlist[index_v].name,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 50),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Price",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          controller
                                              .coinlist[index_v].currentPrice
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 50),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: Stack(
                                children: <Widget>[
                                  Positioned.fill(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          gradient:
                                              LinearGradient(colors: <Color>[
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
                                      "Kaldır",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    onPressed: () {
                                      button_count = 0;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}
