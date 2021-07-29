import 'package:el_reqaba/content.dart';
import 'package:flutter/material.dart';
import 'package:el_reqaba/homeScreem.dart';
import 'package:el_reqaba/myprofile.dart';
import 'branches.dart';

class nav_Bar extends StatefulWidget {
  @override
  _nav_BarState createState() => _nav_BarState();
}

class _nav_BarState extends State<nav_Bar> {
  var _selected_Index = 0 ;
  List<Widget> _WidgetOptions = <Widget>[
    content(),
    branches(),
    myprofile(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selected_Index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: _WidgetOptions.elementAt(_selected_Index),),
      bottomNavigationBar: BottomNavigationBar(
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('الرئيسية'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.branding_watermark_outlined),
            title: new Text('الفروع'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('حسابي')
          )
        ],
        currentIndex: _selected_Index,
        onTap: _onItemTapped,
      ),
    );
  }
}
