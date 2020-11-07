import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial AppBar',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text('Hello'),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert),
            )
          ],
        ),
      ),
    );
  }
}
