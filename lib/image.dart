import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      home: Scaffold(
      appBar: AppBar(
      title: const Text('SnackBar Demo',style:TextStyle(color: Colors.white)),
      backgroundColor: Colors.blueAccent,
    ),
        body: Center(
          
          child: Image.asset("asset/images/BBC.jpg",height: 20,width: 20,),
        ),
      ),
    );
  }
}

