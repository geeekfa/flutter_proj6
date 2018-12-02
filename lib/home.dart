import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './modules/dialog/dialog.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String _email, _password;
  Future<String> _photoOption() async {
    try {

      StorageReference ref = FirebaseStorage.instance
          .ref()
          .child("EntertainmentSubCategory/ed1.jpg")
          ;
      // StorageUploadTask uploadTask = ref.put(imageFile);

      

      // Uri downloadUrl = (await uploadTask.future).downloadUrl;
      // addUser.downloadablelink = downloadUrl.toString();

      // downloadableUrl = downloadUrl.toString();

      print(ref.getDownloadURL());
    } catch (error) {
      print(error);
    }
    
  }

  
  @override
  Widget build(BuildContext context) {
    //_photoOption();

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
                  new Image.asset("assets/images/friends.png"),
                  new Image.network("https://firebasestorage.googleapis.com/v0/b/university-20366.appspot.com/o/EntertainmentSubCategory%2Fed.jpg?alt=media&token=6b9cf51a-ddd5-4cb1-9408-832ddea02812")
                  //
                ],
              ))),
    );
  }
}
