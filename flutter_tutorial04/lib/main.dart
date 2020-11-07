import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> listItems = [
    {
      'text': 'Item 1',
      'color': Colors.blue[600],
    },
    {
      'text': 'Item 2',
      'color': Colors.blue[300],
    },
    {
      'text': 'Item 3',
      'color': Colors.blue[100],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial ListView',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.all(4),
              child: ListView(
                children: [
                  Container(
                    height: 50,
                    color: Colors.blue[600],
                    child: Text('Item1'),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[300],
                    child: Text('item 2'),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[100],
                    child: Text('Item 3'),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              padding: EdgeInsets.all(4),
              child: ListView.builder(
                itemCount: listItems.length,
                itemBuilder: (context,index){
                  return Container(
                    height: 50,
                    color: listItems[index]['color'],
                    child: Text(listItems[index]['text']),
                  );
                },
              ),
            ),
            Container(
              height: 150,
              padding: EdgeInsets.all(4),
              child: ListView.separated(
                itemCount: listItems.length,
                itemBuilder: (context,index){
                  return Container(
                    height: 50,
                    color: listItems[index]['color'],
                    child: Text(listItems[index]['text']),
                  );
                },
                separatorBuilder: (context,index){
                  return Divider();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
