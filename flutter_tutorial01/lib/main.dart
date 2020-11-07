import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData(primarySwatch: Colors.blue),
     home: Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Container(
               color: Colors.blue,
               child: Text('blue'),
             ),
             Container(
               width: 200,
               height: 50,
               color: Colors.blue,
               child: Text('padding'),
             ),
             Container(
               color: Colors.blue,
               child: Container(
                 margin: EdgeInsets.all(8),
                 color: Colors.green,
                 child: Text('margin'),
               ),
             ),
             Container(
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.blue,width: 2
                 ),
                 borderRadius: BorderRadius.circular(8),
               ),
               padding: EdgeInsets.all(8),
               child: Text('border'),
             ),
             Container(
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: NetworkImage('https://placehold.jp/200x100.png'),
                 ),
               ),
               width: 200,
               height: 100,
               child: Text('image'),
             )
           ],
         ),
       ),
     )
   );
  }
}

