import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 412,
                width: 352,
                padding: EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.black),
                    bottom: BorderSide(width: 1.0, color: Colors.black),
                    left: BorderSide(width: 1.0, color: Colors.black),
                    right: BorderSide(width: 1.0, color: Colors.black),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          child: const Center(
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('assets/images/Ronny.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 250,
                          padding: EdgeInsets.only(left: 3, top: 25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Rohan Dhere',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Student',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          child: const Center(
                            child: Icon(
                              Icons.school,
                              size: 60,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('College of Engineering,Pune',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          child: const Center(
                            child: Icon(Icons.file_copy, size: 50, color: Colors.deepPurple),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 250,
                          padding: EdgeInsets.only(left: 3, top: 17),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Project_Name_1',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Project_Name_2',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // fourth row
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          child:  Center(
                            child: Icon(Icons.email, size: 50, color: Colors.deepPurple,),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 250,
                          padding: EdgeInsets.only(left: 3, top: 29),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('rohandhere44@gmail.com',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // fifth row
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          child:  Center(
                            child: Icon(Icons.phone, size: 50, color: Colors.deepPurple,),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 250,
                          padding: EdgeInsets.only(left: 3, top: 29),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('+91 8806xxxxxx',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}