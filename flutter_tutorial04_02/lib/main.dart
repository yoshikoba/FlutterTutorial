import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial ListTile,Card',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: Image.network('https://placehold.jp/50x50.png'),
              title:Text('ListTile'),
              subtitle: Text('subtitle'),
              trailing: Icon(Icons.more_vert),
            ),
            Card(
              child: Container(
                height: 60,
                width: double.infinity,
                child: Text('Card'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network('https://placehold.jp/50x50.png'),
                title: Text('Card and ListTile'),
                subtitle: Text('subtitle'),
                trailing: Icon(Icons.more_vert),
              ),
            )
          ],
        ),
      ),
    );
  }
}
