import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercsk/widget/header.dart';
void main(){
  runApp(MaterialApp(home: Profile(),));
}
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: header(context,titleText: "Profile"),
      body: Text('profile',style: TextStyle(
        color: Colors.white,
      ),),
    );
  }
}
