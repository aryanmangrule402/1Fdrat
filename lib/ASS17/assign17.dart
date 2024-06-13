import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//Completed on 9/06/2024
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kolhapur App',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
    length: 2,
      child:Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Asssign17'),
        bottom: TabBar(tabs: <Widget>[
          Tab(icon: Icon(Icons.home,color: Colors.white,),

          ),
          Tab(icon:Icon(Icons.account_box))
        ])


      ),
      body:TabBarView(children: <Widget>[

        Stack(
          children: [
            Padding(padding: EdgeInsets.all(50)),
            Container(
              child: Text('Kolhapur'),
              color: Colors.white10
            ),
            Padding(padding: EdgeInsets.all(100)),
            Container(
              padding: EdgeInsets.all(200),
              child: Image.asset('asset/images/kolhapur_image1.jpg'),
            ),
            Container(
              padding: EdgeInsetsDirectional.all(50),
              child: Image.asset('asset/images/kolhapur_image2.jpg'),
            )
          ],

        ),
        Center(child: Text('Kolhapur Mahrashtra', style: TextStyle(fontSize: 20)),)
      ])
    )
    );
  }
}

//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Kolhapur App'),
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: const [
//             Tab(icon: Icon(Icons.home), text: 'Home'),
//             Tab(icon: Icon(Icons.info), text: 'About'),
//             Tab(icon: Icon(Icons.help), text: 'Help'),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           // Home - Stack with image containers
//           Stack(
//             children: [
//               // Background image
//               Image.asset(
//                 'asset/images/kolhapur_bg.webp', // Replace with your background image path
//                 fit: BoxFit.cover,
//                 height: double.infinity,
//                 width: double.infinity,
//               ),
//               // Positioned image containers
//               Positioned(
//                 top: 50.0,
//                 left: 100.0,
//                 child: Container(
//                   height: 150.0,
//                   width: 150.0,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     image: DecorationImage(
//                       image: AssetImage('asset/images/kolhapur_image1.jpg'), // Replace with your image path
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 250.0,
//                 right: 100.0,
//                 child: Container(
//                   height: 150.0,
//                   width: 150.0,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     image: DecorationImage(
//                       image: AssetImage('asset/images/kolhapur_image2.jpg'), // Replace with your image path
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               // Text container with information
//               Positioned(
//                 bottom: 20.0,
//                 left: 20.0,
//                 right: 20.0,
//                 child: Container(
//                   padding: EdgeInsets.all(10.0),
//                   color: Colors.black.withOpacity(0.5),
//                   child: Text(
//                     'Kolhapur - The City of Wrestlers',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           // About - Text information
//           Center(
//             child: Text(
//               'About Kolhapur\n\n'
//                   'Kolhapur is a city located...', // Add your about content
//             ),
//           ),
//           // Help - Contact information
//           Center(
//             child: Text(
//               'Help\n\n'
//                   'Contact Numbers:\n'
//                   '+91 1234567890', // Add your contact numbers
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
