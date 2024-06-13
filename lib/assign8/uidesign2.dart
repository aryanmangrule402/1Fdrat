import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.width / 10,
                        margin: EdgeInsets.only(left: 10, right: 5),
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          "assets/image/img1.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Hello",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: CupertinoColors.systemGrey,
                                  )),
                            ),
                            Container(
                              child: Text(
                                "Pranav",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Icon(Icons.notifications_active),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.black12,
                child: Image.asset(
                  'assets/image/watch.png',
                  width: double.infinity,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black12,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.earbuds_battery_rounded),
                              ),
                            ),
                            Text("Battery")
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black12,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.camera_alt),
                              ),
                            ),
                            Text("Camera")
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black12,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.smart_display_sharp),
                              ),
                            ),
                            Text("Media")
                          ],
                        ),
                      ),
                    ],
                  )),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.bluetooth_searching_rounded),
                                ),
                              ),
                              Text("Bluetooth")
                            ],
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.wifi),
                                ),
                              ),
                              Text("WiFi")
                            ],
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.call),
                                ),
                              ),
                              Text("Call")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.image), label: "Gallery"),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz_rounded), label: "More"),
          ],
        ),
      ),
    );
  }
}
