import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './modules/TDialog.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Text('Header'),
            decoration: new BoxDecoration(color: Colors.blue),
          ),
          new ListTile(
            title: new Text('First Menu Item'),
            onTap: () {},
          ),
          new ListTile(
            title: new Text('Second Menu Item'),
            onTap: () {},
          ),
          new Divider(),
          new ListTile(
            title: new Text('About'),
            onTap: () {},
          ),
        ],
      )),
      body: new Center(
          child: new Container(
              padding: EdgeInsets.all(8.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Image.asset("assets/images/friends.png")
                ],
              ))),
    );
  }
}
