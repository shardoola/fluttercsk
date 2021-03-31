import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercsk/widget/header.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final CollectionReference userref = FirebaseFirestore.instance.collection('user');
class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  void initState() {
    getUsers();
    super.initState();
  }
  getUsers() {
    userref.get().then((QuerySnapshot snapshot) {
snapshot.docs.forEach((DocumentSnapshot documentSnapshot) {
  print(documentSnapshot.data);
  print(documentSnapshot.id);
  print(documentSnapshot.exists);
});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      appBar: header(context,  isAppTitle: true),
      body: Text("Timeline",style: TextStyle(
        color: Colors.white,
      ),),
    );
  }
}


