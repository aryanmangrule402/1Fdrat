import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              color: CupertinoColors.systemYellow,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                padding: EdgeInsets.all(50),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(100),
                  ),
                ),
                // This line references the image asset
                child:Image.network('asset/images/asset1.png')
                ,
              ),
            ),            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                  color: CupertinoColors.systemYellow,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(110))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Beauty Master",
                    style: TextStyle(
                      fontSize: 32,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Book your Favourite\n Stylist Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.normal,
                        color: Colors.purple),
                  ),
              Opacity(

                opacity: 1.0,
               child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black,fixedSize: Size(200, 50)),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        height:3.5,
                      ),
                    ),
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

