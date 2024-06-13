import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  @override


  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('News feed',style:TextStyle(color: Colors.white),),
            backgroundColor: Colors.blueAccent,

            actions: [
              // PopupMenuButton<String>(
              //   onSelected: (value) => print("Selected: $value"),
              //   itemBuilder: (context) => [
              //     PopupMenuItem(
              //       value: 'Option 1',
              //       child: Text('Share'),
              //     ),
              //     PopupMenuItem(
              //       value: 'Option 2',
              //       child: Text('Link'),
              //     ),
              //   ],
              //   child: Icon(Icons.menu_sharp,color: Colors.white,size:30.0),
              // ),
              DropdownButton<String>(

                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),

                  );
                }).toList(),
                onChanged: (_) {},
              // dropdownColor: Colors.white,

              )



            ],

        ),
        body: Center(
          child: Card(
          child: Padding(padding:EdgeInsets.all(24.0),
              child:Column(
                mainAxisSize: MainAxisSize.min,
              children:[
              Image.network("asset/images/BBC.jpg",
                    height: 300,
                      width: 1000,
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Align to the start (left)
                  children: [
                    Text(
                      '17/08/2020',
                      style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Align to the start (left)
                  children: [
                    Text(
                      'Mass Shooting in Atlanta',
                      style: TextStyle(fontWeight: FontWeight.bold
                          ),
                    ),
                   

                  ],
                ),



                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet tortor pretium interdum euismod mi. Donec vehicula sapien ut lorem euismod laoreet.',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(onPressed: ()async{}, child:Text("Share",style: TextStyle(color: Colors.black45),)),
                    TextButton(onPressed: ()async{}, child:Text("Bookmark",style: TextStyle(color: Colors.black45),)),
                    TextButton(onPressed: ()async{}, child:Text("Link",style: TextStyle(color: Colors.black45),)),

                  ],

                )
              ]
          ),
            ),

            ),
          ),

        ),

      );

  }
}
