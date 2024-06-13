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
  List<Contact> contacts = [
    Contact(name: "Aditya", number: 7666898977),
    Contact(name: "Sham", number: 7666563977),
    Contact(name: "Ashish", number: 787654310),
    Contact(name: "Akash", number: 1234567890),
  ];

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blue,
       ),
       body: ListView.builder(
         itemCount:contacts.length ,
           itemBuilder:(context,index) {
             Contact contact = contacts[index];
          return ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.orange,
             ),
             title: Text(contact.name),
             subtitle: Text(contact.number.toString()),
            trailing: Icon(Icons.call),

           );
       
           }
     ),
     ),
   ) ;



    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text("Contact List"),
    //       backgroundColor: Colors.orangeAccent,
    //
    //     ),
    //     body: ListView.builder(
    //       itemCount: contacts.length,
    //       itemBuilder: (context, index) {
    //         Contact contact = contacts[index];
    //         return ListTile(
    //           leading: CircleAvatar(
    //             backgroundColor: Colors.orange,
    //             child: Text(contact.name[0]),
    //           ),
    //           title: Text(contact.name),
    //           subtitle: Text(contact.number.toString()),
    //           trailing: IconButton(
    //             onPressed: () {
    //               // Add your call functionality here
    //             },
    //             icon: Icon(Icons.call),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}

class Contact {
  final String name;
  final int number;

  Contact({required this.name, required this.number});
}
