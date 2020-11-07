import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

//ログイン画面
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String infoText = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'メールアドレス'),
                onChanged: (String value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'パスワード入力'),
                obscureText: true,
                onChanged: (String value){
                  setState(() {
                    password = value;
                  });
                },
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Text(infoText),
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('ユーザー登録'),
                  onPressed: () async {
                    try {
                      final FirebaseAuth auth = FirebaseAuth.instance;
                      await auth.createUserWithEmailAndPassword(email: email, password: password);
                      await Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context){
                          return ChatPage();
                        })
                      );
                    } catch (e) {
                      setState(() {
                        infoText = "登録に失敗しました：${e.message}";
                      });
                    }
                  },
                ),
              ),
              RaisedButton(
                child: Text('ログイン'),
                onPressed: () async {
                  await Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) {
                      return ChatPage();
                    }),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('チャット'),
        actions: [
          IconButton(
            icon:Icon(Icons.close),
            onPressed: () async {
              await Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context){
                  return LoginPage();
                })
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return AddPostPage();
            })
          );
        },
      ),
    );
  }
}

//投稿画面用Widget

class AddPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('チャット投稿'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('戻る'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
