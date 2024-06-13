import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var countries = ["India", "China", "Sri Lanka", "USA", "England"];
  String dropdownVal = "India";

  final Map<String, String> countryFlags = {
    "India": "asset/Country Flag/india.png",
    "China": "asset/Country Flag/china.png",
    "Sri Lanka":"asset/Country Flag/china.png",
    "USA":"asset/Country Flag/china.png",
    "England" :"asset/Country Flag/china.png",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop Down Button"),
        backgroundColor: Colors.black12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: DropdownButton(
                value: dropdownVal,
                items: countries.map((String country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Row(
                      children: [
                        Image.asset(
                          countryFlags[country]!,
                          width: 30,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10),
                        Text(country),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String? newVal) {
                  setState(() {
                    if (newVal != null) {
                      dropdownVal = newVal;
                    }
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Submitted Successfully!"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
