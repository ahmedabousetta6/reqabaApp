import 'package:el_reqaba/self_tasks.dart';
import 'package:flutter/material.dart';
import 'package:el_reqaba/branches.dart';
import 'package:el_reqaba/nav_Bar.dart';
import 'package:el_reqaba/myprofile.dart';
class homeScreen extends StatefulWidget {
  @override
  _homeSSState createState() => _homeSSState();
}

class _homeSSState extends State<homeScreen> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      ),
      body:

      nav_Bar(),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('User Name'),
            ),
            ListTile(
              title: Text('لائحة الرقابة'),
              onTap: () {
              },
            ),

            ListTile(
              title: Text('الفروع'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => branches()),
                );
              },
            ),
            ListTile(
              title:  Text('مهامي',
                style: TextStyle(fontSize:30 ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => self_tasks()),
                );
              },
            ),
          ],
        ),
      ),


    );
  }
}
