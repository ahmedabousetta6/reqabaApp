import 'package:el_reqaba/self_tasks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:el_reqaba/branches.dart';
import 'package:el_reqaba/homeScreem.dart';
import 'package:flutter/services.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.blue,
    ));
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("الرقابة الادارية والمالية",
            style: TextStyle(color: Colors.black,
              fontSize: 28,
            ),
          )),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
        body:
        ListView(

          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(30)),
                      boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/1_onboard.png")),

                      ],
                    ),
                    ),

                  SizedBox(height: 10,),
                  Center(child:
                  Container(
                      height: MediaQuery.of(context).size.height/2,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadiusDirectional.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child:Column(
                        children: [
                          SizedBox(height: 40,),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'User Name',
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                              ),
                            ),
                          ),
                          FlatButton(
                            onPressed: (){
                              //forgot password screen
                            },
                            textColor: Colors.blue,
                            child: Text('Forgot Password?'),
                          ),
                          SizedBox(height: 86,),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                    bottomEnd: Radius.circular(30.0),
                                    bottomStart: Radius.circular(30.0),
                                  )
                              ),
                              height: 50,
                              width: 400,
                              child: RaisedButton(

                                textColor: Colors.white,
                                color: Colors.blue,
                                child: Text('Login'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => homeScreen()),
                                  );

                                }
                              )),
                        ],
                      )
                  ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
