import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial 03 Button',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('FlatButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: null,
                  child: Text('disabled'),
                ),
                FlatButton(
                  onPressed: (){},
                  child: Text('enabled'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.white,
                  onPressed: null,
                  child: Text('dsabled'),
                ),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){},
                  child: Text('enabled'),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('OutlineButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlineButton(
                  onPressed: null,
                  child: Text('disabled'),
                ),
                OutlineButton(
                  onPressed: (){},
                  child: Text('enabled'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlineButton(
                  disabledBorderColor: Colors.red,
                  onPressed: null,
                  child: Text('disabled'),
                ),
                OutlineButton(
                  borderSide: BorderSide(color: Colors.blue),
                  onPressed: (){},
                  child: Text('enabled'),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('RaisedButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: null,
                  child: Text('disabled'),
                ),
                RaisedButton(
                  onPressed: (){},
                  child: Text('enabled'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  elevation: 8,
                  onPressed: null,
                  child: Text('disabled'),
                ),
                RaisedButton(
                  elevation: 8,
                  onPressed: (){},
                  child: Text('enabled'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
