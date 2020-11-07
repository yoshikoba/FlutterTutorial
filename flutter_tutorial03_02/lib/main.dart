import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial Icon Button',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: (){},
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('IconButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.thumb_up),
                ),
                IconButton(
                  color: Colors.red,
                  onPressed: (){},
                  icon: Icon(Icons.favorite),
                ),
                IconButton(
                  iconSize: 64,
                  onPressed: (){},
                  icon: Icon(Icons.flight),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('アイコン+テキスト'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.thumb_up),
                  label: Text('Good'),
                ),
                OutlineButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.favorite,color: Colors.pink,),
                  label: Text('Like'),
                ),
                RaisedButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.flight),
                  label: Text('Flight'),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
