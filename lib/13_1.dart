import 'package:flutter/material.dart';
void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Flutter DropDownButton',

      theme: ThemeData(

        primarySwatch: Colors.green,

      ),

      home: const MyHomePage(),

      debugShowCheckedModeBanner: false,

    );

  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override

  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  // Initial Selected Value

  String dropdownvalue = 'India';

  // List of items in our dropdown menu

  var items = [

    'India',

    'UAE',

    'Japan',

    'France',

    'Germany',
  ];

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text("Flutter DropDown "),
        backgroundColor: Colors.greenAccent,

      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            DropdownButton(
              // Initial Value

              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),

              items: items.map((String items) {

                return DropdownMenuItem(

                  value: items,

                  child: Text(items),

                );

              }).toList(),

              onChanged: (String? newValue) {

                setState(() {

                  dropdownvalue = newValue!;

                });

              },

            ),

          ],

        ),

      ),

    );

  }
}