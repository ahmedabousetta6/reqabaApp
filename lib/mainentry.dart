import 'package:flutter/material.dart';
import 'loginScreen.dart';

void main(){
  runApp(mainentry());
}

class mainentry extends StatefulWidget {
  @override
  _mainentryState createState() => _mainentryState();
}

class _mainentryState extends State<mainentry> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: loginScreen()
    );
  }
}
