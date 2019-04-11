import 'package:flutter/material.dart';


import 'package:flutter_maps/authentication.dart';

class HomePage extends StatefulWidget {

  final BaseAuth auth;
  final VoidCallback onSignedOut;
  final String userId;

  HomePage({Key key, this.auth, this.userId, this.onSignedOut})
      : super(key: key);



  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  
 



  _signOut() async {
    try {
      await widget.auth.signOut();
      widget.onSignedOut();
    } catch (e) {
      print(e);
    }
  }

 


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter login demo'),
          actions: <Widget>[
            new FlatButton(
                child: new Text('Logout',
                    style: new TextStyle(fontSize: 17.0, color: Colors.white)),
                onPressed: _signOut)
          ],
        ),
        body: Container(
          child: new Text("hello"),

        )
    );
  }
}