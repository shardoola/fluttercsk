import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttercsk/page/Forum.dart';
import 'package:fluttercsk/page/activity_feed.dart';
import 'package:fluttercsk/page/profile.dart';
import 'package:fluttercsk/page/search.dart';
import 'package:fluttercsk/page/timeline.dart';
import 'package:fluttercsk/page/upload.dart';
class HomePage1 extends StatefulWidget {

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  PageController pageController;
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }
  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }
  onPageChanged(int pageIndex){
    setState(() {
      this.pageIndex = pageIndex;
    });

  }
  onTap(int pageIndex){
     pageController.jumpToPage(
       pageIndex,
     );
  }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: PageView(
        children: [
          Timeline(),
          Search(),
          Upload(),
          Forum(),
          ActivityFeed(),
        ],
          controller: pageController,
          onPageChanged: onPageChanged,
          physics: NeverScrollableScrollPhysics(),
    ),
    bottomNavigationBar: CupertinoTabBar(
    backgroundColor: Colors.white10,

    currentIndex: pageIndex,
    onTap: onTap,
    activeColor: Colors.red,
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 30.00,),),
    BottomNavigationBarItem(icon: Icon(Icons.search_rounded,size: 30.00,),),
    BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_rounded,size: 30.00,),),
    BottomNavigationBarItem(icon: Icon(Icons.forum_outlined,size: 30.00,),),
    BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined,size: 30.00,),),
    ],
    ),
    );
  }
}
            
