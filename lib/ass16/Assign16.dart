import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo',style:TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueAccent,
        ),
        body: const SnackBarPageWithBottomNavigationBar(),
      ),
    );
  }
}

class SnackBarPageWithBottomNavigationBar extends StatefulWidget {
  const SnackBarPageWithBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _SnackBarPageWithBottomNavigationBarState createState() => _SnackBarPageWithBottomNavigationBarState();
}

class _SnackBarPageWithBottomNavigationBarState extends State<SnackBarPageWithBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: const Text('Snackbar !'),
              action: SnackBarAction(
                label: 'Learnmore',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Alert Dialog'),
                      content: Text(
                        'This is a detailed message that explains the functionality in more depth. You can add additional information here.',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Show SnackBar'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
