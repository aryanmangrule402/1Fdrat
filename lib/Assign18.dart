import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assign18(),
    );
  }
}

class Assign18 extends StatefulWidget {
  const Assign18({super.key});

  @override
  State<Assign18> createState() => _Assign18State();
}

class _Assign18State extends State<Assign18> {
  // Tab 1 values:
  bool isSwitched = false;
  String switchValue = "Switch is OFF";

  // Tab 3 values:
  RangeValues currentRangeValues = const RangeValues(19, 55);

  void _toggleSwitch() {
    setState(() {
      isSwitched = !isSwitched;
      if (isSwitched == false) {
        switchValue = "Switch is OFF";
      } else {
        switchValue = "Switch is ON";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            title: const Text("Assignment 18"),
            bottom: const TabBar(tabs: [
              Tab(text: "Switch"),
              Tab(text: "Scroll"),
              Tab(text: "Range"),
              Tab(text: "Carousel")
            ], labelColor: Colors.blue),
          ),

          body: Center(
            child: TabBarView(
              children: [

                Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Switch(
                        onChanged: (value) {
                          _toggleSwitch();
                        },
                        value: isSwitched,
                      ),
                      Text(
                        switchValue,
                        style: const TextStyle(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: Colors.tealAccent,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Container(
                                    height: 200,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Container(
                                    height: 200,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Container(
                                    height: 200,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Container(
                                    height: 200,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, right: 18),
                                  child: Container(
                                    height: 200,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Container(
                            height: 200,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Container(
                            height: 200,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Container(
                            height: 200,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Container(
                            height: 200,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                          child: Container(
                            height: 200,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  color: Colors.tealAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Select valid range",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      RangeSlider(
                        min: 0,
                        max: 100,
                        divisions: 100,
                        values: currentRangeValues,
                        labels: RangeLabels(
                            currentRangeValues.start.round().toString(),
                            currentRangeValues.end.round().toString()),
                        onChanged: (RangeValues values) {
                          setState(() {
                            currentRangeValues = values;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                Container(
                  color: Colors.tealAccent,
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(22.0),
                            child: Text(
                              "Some historical places in India",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ),
                          CarouselSlider(
                            items: [
                              Container(
                                margin: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage("asset/images/10-famous-historical-places-in-India.jpg"),
                                        fit: BoxFit.fitWidth)),
                              ),
                              Container(
                                margin: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: const DecorationImage(
                                        image:
                                        AssetImage("asset/images/images.jpg"),
                                        fit: BoxFit.fitWidth)),
                              ),
                              Container(
                                margin: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: const DecorationImage(
                                        image:
                                        AssetImage("asset/images/images1.jpg"),
                                        fit: BoxFit.fitWidth)),
                              ),
                              Container(
                                margin: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: const DecorationImage(
                                        image:
                                        AssetImage("asset/images/images2.jpg"),
                                        fit: BoxFit.fitWidth)),
                              ),
                              Container(
                                margin: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: const DecorationImage(
                                        image:
                                        AssetImage("assets/images/img_4.png"),
                                        fit: BoxFit.fitWidth)),
                              ),
                            ],
                            options: CarouselOptions(
                              height: 180.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              viewportFraction: 0.8,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
