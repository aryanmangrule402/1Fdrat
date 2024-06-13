import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var items=["Item 1","Item 2","Item 3","Item 4"];
  String dropVal="Item 1";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drop Down Button."),
        ),
        body: Center(
          child: Column(





            children: [
              SizedBox(height: 320,),
              DropdownButton(
              value: dropVal,
              items:items.map((String item){
                return DropdownMenuItem(

                  value:item,
                  child:Text(item),
                );

              }).toList(),
              onChanged: (String? newVal){
                setState(() {
                  dropVal=newVal!;
                });
              },
              ),
              SizedBox(height:20),
              Text("You have selected $dropVal")

            ],
          ),
        ),
      ),

    );
  }
}





