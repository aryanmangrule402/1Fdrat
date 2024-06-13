import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageAnimationDemo(),
    );
  }
}

class ImageAnimationDemo extends StatefulWidget {
  @override
  _ImageAnimationDemoState createState() => _ImageAnimationDemoState();
}

class _ImageAnimationDemoState extends State<ImageAnimationDemo> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Animation Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _scale = _scale == 1.0 ? 1.5 : 1.0;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            transform: Matrix4.identity()..scale(_scale),
            child: Image.asset(
              'asset/images/BBC.jpg', // Change the image path
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
