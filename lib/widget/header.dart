
import 'package:flutter/material.dart';
import 'package:fluttercsk/page/message.dart';
import 'package:fluttercsk/page/profile.dart';

AppBar header(BuildContext context, {
  bool isAppTitle = false, String titleText
}) {
  return AppBar(
      title: Text(
        isAppTitle ? "weebNet": titleText,
      style: TextStyle(
        color: Colors.white,
        fontFamily: isAppTitle ? "Signatra": "",
          fontSize: isAppTitle ? 50.0: 30.0,
      ),),

      actions: <Widget>[
  IconButton(
  icon: Icon(Icons.send_outlined),
  tooltip: 'message',
  onPressed: () {
    Navigator.push(
      context,MaterialPageRoute(builder: (context) => Message()),
    );
  },
  ),],
    backgroundColor: Colors.white12,
    leading: IconButton(
      icon: Icon(Icons.person),
      tooltip: 'Profile',
      onPressed: () {Navigator.push(
        context,MaterialPageRoute(builder: (context) => Profile()),
      );
      },
    ), //IconButton
    centerTitle: true,

  );
}