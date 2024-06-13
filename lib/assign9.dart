import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Test App',),
        backgroundColor: Colors.yellow,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                print("Text Button Pressed");
              },
              child: Text(
                "Text button",
                style: TextStyle(fontSize: 20,color: CupertinoColors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.redAccent,

              ),
            ),

            ElevatedButton(
              onPressed: () {
                print("Elevated Button Pressed");
              },
              child: Text(
                "Elevated Button",
                style: TextStyle(fontSize: 20,color:CupertinoColors.white),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 25,
                shadowColor: Colors.blueGrey,
                backgroundColor: Colors.blueAccent,
              ),
            ),
            IconButton(
              iconSize:30 ,
              icon: Icon(Icons.volume_up),
              onPressed: () {
                setState(() {
                  count++;
                });
              },
            ),
            IconButton(
              iconSize:30 ,
              icon: Icon(Icons.volume_down),
              onPressed: () {
                setState(() {
                  count--;
                });
              },
            ),
            Text(
              "$count",
              style: const TextStyle(fontSize: 20),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                "Outlined Button",
                style: TextStyle(fontSize: 20,color:Colors.deepPurple,fontWeight: FontWeight.bold),
              ),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
