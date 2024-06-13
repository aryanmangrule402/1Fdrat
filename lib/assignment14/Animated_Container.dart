import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Container',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  double _imageWidth = 200;
  double _imageHeight = 250;
  bool _isEnlarged = true;
  bool _isLeft = true;

  void _toggleSizeAndPosition() {
    setState(() {
      _isEnlarged = !_isEnlarged;
      _isLeft = !_isLeft;

      _imageHeight = _isEnlarged ? 250 : 500;
      _imageWidth = _isEnlarged ? 200 : 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(seconds: 1),
              alignment: _isLeft ? Alignment.centerLeft : Alignment.centerRight,
              child: GestureDetector(
                onTap: _toggleSizeAndPosition,
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  duration: const Duration(seconds: 1),
                  width: _imageWidth,
                  height: _imageHeight,
                  child: Image.asset(
                    'asset/images/BBC.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
