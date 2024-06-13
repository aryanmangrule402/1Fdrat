import 'package:flutter/material.dart';

void main() {
  runApp(const Second());
}
class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        margin:const EdgeInsets.only(top: 70),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Container(
              color: Colors.indigo[400],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.only(left:30),
                    child:Image.asset('assets/images/Logo.png'),
                  ),
                  Container(
                    height: 100,
                    width:(MediaQuery.of(context).size.width-100),
                    child:const Center(
                      child: Text(
                        'Ronny Travel Agency',
                            style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
           const SizedBox(height: 5),
           Container(
             height:MediaQuery.of(context).size.height-200,
             width:MediaQuery.of(context).size.width,
             color: Colors.white,
             child:Row(
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Container(
                      height:MediaQuery.of(context).size.height-200,
                      width:190,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Container(
                            height: 75,
                            width: 190,
                            padding: const EdgeInsets.only(left:6,top: 30),
                            color: Colors.indigo[400],
                            child: const Text('India Tour'
                            ,style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                                fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 190,
                            padding: const EdgeInsets.only(left: 6,top: 30),
                            color: Colors.indigo[400],
                            child: const Text('World Tour'
                              ,style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 190,
                            padding: const EdgeInsets.only(left: 6,top: 30),
                            color: Colors.indigo[400],
                            child: const Text('Specifically Tour'
                              ,style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 190,
                            padding: const EdgeInsets.only(left: 6,top: 30),
                            color: Colors.indigo[400],
                            child: const Text('Economy Tour'
                              ,style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 190,
                            padding: const EdgeInsets.only(left: 6,top: 30),
                            color: Colors.indigo[400],
                            child: const Text('Corporate Tour'
                              ,style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 190,
                            padding: const EdgeInsets.only(left: 6,top: 30),
                            color: Colors.indigo[400],
                            child: const Text('Customized Tour'
                              ,style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 190,
                            padding: const EdgeInsets.only(left: 6,top: 30),
                            color: Colors.indigo[400],
                            child: const Text('Cruises'
                              ,style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 75,
                            width: 190,
                            padding: const EdgeInsets.only(left: 6,top: 30),
                            color: Colors.indigo[400],
                            child: const Text('Best Deal Of Week'
                              ,style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),

                        ],

                      ),
                   ),
                  ],
                 ),
                 const SizedBox(width: 5),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       height:MediaQuery.of(context).size.height-200,
                       width:MediaQuery.of(context).size.width-195,
                       color: Colors.cyanAccent,
                      //imges and name
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width-195,
                             // color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: 25,
                                    width: MediaQuery.of(context).size.width-195,
                                    child: const Text('India'
                                      ,style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    width: MediaQuery.of(context).size.width-195,
                                    child: Image.asset('assets/images/India.jpg',fit: BoxFit.fill,),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width-195,

                              child: Column(
                                children: [

                                  Container(
                                    height: 25,
                                    width: MediaQuery.of(context).size.width-195,
                                    child: const Text('Ayodhya',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    width: MediaQuery.of(context).size.width-195,
                                    child: Image.asset('assets/images/Ayodhya.jpg',fit: BoxFit.fill,),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width-195,

                              child: Column(
                                children: [

                                  Container(
                                    height: 25,
                                    width: MediaQuery.of(context).size.width-195,
                                    child: const Text('Europe'
                                      ,style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    width: MediaQuery.of(context).size.width-195,
                                    child: Image.asset('assets/images/Europe.jpg',fit: BoxFit.fill,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                     ),
                   ],
                 ),

               ],
             ),
           ),
          ],
        ),
      ),
      );
  }
}
