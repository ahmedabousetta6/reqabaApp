import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class self_tasks extends StatefulWidget {
  @override
  _self_tasksState createState() => _self_tasksState();
}

class _self_tasksState extends State<self_tasks> {
  TextEditingController _TextFieldController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      backgroundColor: Colors.deepOrange,
      floatingActionButton: new FloatingActionButton(onPressed: _showformdialog,
        child: ListTile(
          title: Icon(Icons.add),
        ),
        backgroundColor: Colors.greenAccent,
      ),

    );
  }

  void _showformdialog() {
    var alert =new AlertDialog(
      content:  Column(
        children: [
          Row(
            children: [
              Expanded(child: TextField(
                controller: _TextFieldController,
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "Item",
                    icon: Icon(Icons.add_alert)
                ),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(child: TextField(
                controller: _TextFieldController,
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "description",
                    icon: Icon(Icons.description_outlined)
                ),
              ))
            ],
          ),
        ],
      ),
      actions: [
        FlatButton(onPressed: (){
          _handleSubmit(_TextFieldController.text);
        },
            child: Text("Save")),
        FlatButton(onPressed: ()=> Navigator.pop(context),
            child: Text("Cancel")),
      ],
    );
    showDialog(context: context,
        builder: (_)
        {
          return alert;
        }
    );
  }
}

class _handleSubmit {
  _handleSubmit(String text);

}
