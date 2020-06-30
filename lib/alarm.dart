import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alarm extends StatefulWidget {
  @override
  _alarmState createState() => _alarmState();
}

class _alarmState extends State<alarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(100.0,200.0,150.0,10.0),
        child: FloatingActionButton(

          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          right: -40.0,
                          top: -40.0,
                          child: InkResponse(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CircleAvatar(
                              child: Icon(Icons.close),
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          child:
                          Column(
                            children: <Widget>[
                              
                              Text("Set Time"),
                            ],
                          ),
                        ),


                      ],
                    ),
                  );
                });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
