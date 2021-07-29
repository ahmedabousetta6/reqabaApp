import 'package:flutter/material.dart';
import 'package:el_reqaba/branch_data.dart';

class branches extends StatefulWidget {
  @override
  _branchesState createState() => _branchesState();
}

class _branchesState extends State<branches> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
            children: [
              SizedBox(height: 80,),
              Text("هتستلم فرع ايه النهاردة ؟",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 73
                ,),
              Container(

                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(30.0),
                        bottomStart: Radius.circular(30.0),
                        topEnd: Radius.circular(30.0),
                        topStart: Radius.circular(30.0),
                      )
                  ),
                  height: 400,
                  width: 250,

                  child: Center(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Radio(value: 1,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value=value;
                                });
                              },
                            ),
                            SizedBox(width: 20,),
                            Text("ميدان الساعة")
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Radio(value: 2,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value=value;
                                });
                              },
                            ),
                            SizedBox(width: 20,),
                            Text("فريد")
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Radio(value: 3,
                              groupValue: _value,
                              onChanged: (value){ setState(() {
                                _value=value;
                              });},
                            ),
                            SizedBox(width: 20,),
                            Text("القاهرة")
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Radio(value: 4,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value=value;
                                });
                              },
                            ),
                            SizedBox(width: 20,),
                            Text("ابوسرحة")
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Radio(
                              value: 5,
                              groupValue: _value,
                              onChanged: (value){
                                setState(() {
                                  _value=value;
                                });
                              },
                            ),
                            SizedBox(width: 20,),
                            Text("البيطاش ")
                          ],
                        )
                      ],
                    ),
                  )

              ),
              SizedBox(height: 85,),
              ElevatedButton.icon(

                label: Text("تاكيد الاستلام"),
                icon: Icon(Icons.arrow_forward_sharp),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => branch_data()),
                  );
                },
              ),
            ]
        ),
      ),





    );

  }
}
