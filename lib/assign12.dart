

import 'package:b47assign9/13_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String enteredName = '';

  bool showEnteredName =  false; // Flag to control text visibility

  void _handleNameChange(String value) {
    setState(() {
      enteredName = value;
      showEnteredName = false; // Reset flag on new input
    });
  }
  void _showEnteredName() {
    setState(() {
      showEnteredName = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Assignment-12',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
          bottom: TabBar(
            tabs: [
              Tab(text: 'first'), // Renamed tab labels
              Tab(text: 'second'),
            ],
            labelColor: Colors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 2.5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TabBarView(
              children: [
                // Login tab content
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                      ),
                      onChanged: _handleNameChange,
                    ),
                    SizedBox(height: 20),

          ElevatedButton(
            onPressed: _showEnteredName,
            child: Text('Show Name',style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(

              backgroundColor: Colors.deepPurple,
            ),
          ),
          SizedBox(height: 10),
          Visibility(
            visible: showEnteredName, // Show text only if flag is true
            child: Text(
              enteredName.isEmpty ? 'No name entered yet.' : enteredName,
              style: TextStyle(fontSize: 20),
            ),
          ),
          ]
                ),

                // Register tab content
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword, // Password masking
                      obscureText: true, // Password masking
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_usernameController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FinalPage(
                                username: _usernameController.text,
                              ),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Please fill in all fields')),
                          );
                        }
                      },
                      child: Text('Login', style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class FinalPage extends StatelessWidget {
  final String username;

  const FinalPage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Text('Hello $username'),
      ),
    );
  }
}

