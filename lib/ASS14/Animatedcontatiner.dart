import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageResizeDemo(),
    );
  }
}

class ImageResizeDemo extends StatefulWidget {
  @override
  _ImageResizeDemoState createState() => _ImageResizeDemoState();
}

class _ImageResizeDemoState extends State<ImageResizeDemo> {
  double _width = 200.0;
  double _height = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Resize Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _width = _width == 200.0 ? 300.0 : 200.0;
              _height = _height == 200.0 ? 300.0 : 200.0;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/BBC.jpg'), // Change the image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
