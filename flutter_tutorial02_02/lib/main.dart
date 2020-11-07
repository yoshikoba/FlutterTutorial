import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial Row',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.grey[200],
              child: Row(
                children: [
                  Container(
                    color: Colors.red,
                    child: Text('first'),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text('second'),
                  ),
                  Container(
                    color: Colors.green,
                    child: Text('third'),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    child: Text('***'),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text('中央寄せ'),
                  ),
                  Container(
                    color: Colors.green,
                    child: Text('---'),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.red,
                    child: Text('***'),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text('右寄せ'),
                  ),
                  Container(
                    color: Colors.green,
                    child: Text('---'),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.red,
                    child: Text('***'),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text('均等配置'),
                  ),
                  Container(
                    color: Colors.green,
                    child: Text('---'),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.grey[200],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.red,
                    child: Text('***'),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text('上寄せ'),
                  ),
                  Container(
                    color: Colors.green,
                    child: Text('---'),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.red,
                    child: Text('***'),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Text('下寄せ'),
                  ),
                  Container(
                    color: Colors.green,
                    child: Text('---'),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
