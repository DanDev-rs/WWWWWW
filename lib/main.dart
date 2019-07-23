import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInPage()
    );
  }
}

class HomePage extends StatelessWidget {
  final String username;
  final String password;

  const HomePage({Key key, this.username, this.password}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("$username"),
          Text("$password"),
          FlatButton(child: Text("Back"), onPressed: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String username = "";
  String password = "";


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(),
          Text("B"),
          Spacer(),
          TextField(decoration: InputDecoration(labelText: "Username"),
          onChanged: (String s){
            username = s ;
          },         
          ),
          TextField(decoration: InputDecoration(labelText: "Password"),
          obscureText: true,
          onChanged: (String r){
            password = r;
          },
          ),
          Spacer(),
          FlatButton(child: Text("Login"), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage(username: username, password: password,)));
          },)
        ],
      ),
    );
  }
}

