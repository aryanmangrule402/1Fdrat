
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final TextEditingController _nameControl = TextEditingController();
  final TextEditingController _dateControl = TextEditingController();
  final TextEditingController _emailControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Textfield Widget", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
          backgroundColor: Colors.green,
        ),

        body: Padding(
          padding: EdgeInsets.only(top: 200.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 400,
                    child: TextField(
                      controller: _nameControl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        suffixIcon: Icon(Icons.account_box, size: 40,),
                        // suffixText: "Username",
                        prefixIcon: Icon(Icons.account_box_outlined, size: 40,),
                        // prefixText: "Username",
                        prefixIconColor: Colors.greenAccent,
                        labelText: "Name",
                      ),
                      maxLength: 20,
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 400,
                  child: TextField(
                    controller: _dateControl,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),),
                      prefixIcon: Icon(Icons.date_range_outlined, size: 40,),
                      prefixIconColor: Colors.greenAccent,
                      labelText: "Birthdate",
                      helperText: "Format: dd/mm/yyyy",
                      helperStyle: TextStyle(color: Colors.red),
                      hintText: "dd/mm/yy",
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    width: 400,
                    child: TextField(
                      controller: _emailControl,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),),
                        prefixIcon: Icon(Icons.email, size: 40,),
                        prefixIconColor: Colors.greenAccent,
                        suffixText: "@gmail.com",
                        labelText: "Email",
                        helperStyle: TextStyle(color: Colors.red,),
                        hintText: "name@domain",
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        onPressed: (){
                          _dateControl.clear();
                          _emailControl.clear();
                          _nameControl.clear();
                        },
                        child: Text("Clearall"),
                      ),
                    ),
                  )
              )

            ],
          ),
        ),
      ),
    );
  }
}
