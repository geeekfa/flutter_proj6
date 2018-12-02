import 'package:flutter/material.dart';
import 'signup.dart';
import 'home.dart';
// import 'auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import './modules/dialog/dialog.dart';
import './modules/listview/imagetext/model/image_text.dart';
import './modules/listview/imagetext/view/wgt_image_text.dart';

void main() {
  runApp(MaterialApp(
    theme: new ThemeData(primaryColor: Colors.blue),
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  var textEditingControllerEmail = new TextEditingController();
  var textEditingControllerPassword = new TextEditingController();
  @override
  void initState() {
    super.initState();
    textEditingControllerEmail.text = 'geeekfa@gmail.com';
    textEditingControllerPassword.text = '123456';
  }

  @override
  Widget build(BuildContext context) {
    List<ImageText> l2 = new List();
    l2.add(new ImageText("Facebook", "assets/images/a.jpeg"));
    l2.add(new ImageText("Pepsi", "assets/images/b.gif"));
    l2.add(new ImageText("Domino", "assets/images/c.png"));
    l2.add(new ImageText("Wagon", "assets/images/d.jpg"));
    l2.add(new ImageText("Renault", "assets/images/e.gif"));
    l2.add(new ImageText("King", "assets/images/f.png"));

    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
          title: new Text("Entertain-Mate"),
        ),
        body: new Container(
          height: 200.0,
          child: new ListView.builder(
              itemCount: l2.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return new InkResponse(
                  onTap: () => print(l2[index].title),
                  splashColor: Colors.blue,
                  highlightShape: BoxShape.rectangle,
                  containedInkWell: true,
                  borderRadius:BorderRadius.all(Radius.circular(10)) ,
                  child: new WgtImageText(
                      title: l2[index].title, imageURL: l2[index].imageURL),
                );
              },
              scrollDirection: Axis.horizontal),
        ));
  }
}
