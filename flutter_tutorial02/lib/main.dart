import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial 02',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.grey[200],
              child: Column(
                children: [
                  Text('first line'),
                  Text('second line'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text('***'),
                 Text('中央寄せ')
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('***'),
                  Text('下寄せ')
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('***'),
                  Text('均等に配置'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('***'),
                  Text('左寄せ'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('***'),
                  Text('右寄せ')
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
