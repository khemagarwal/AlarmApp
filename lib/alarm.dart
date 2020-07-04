//import 'dart:html';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class alarm extends StatefulWidget {
  @override
  _alarmState createState() => _alarmState();
}

class _alarmState extends State<alarm> {



  @override
  Widget build(BuildContext context) {
    double fromL=(MediaQuery.of(context).size.width/2)-50;
    double fromT=10;
    double fromR=(MediaQuery.of(context).size.width/2)-50;
    double fromB=10;

    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: Padding(
        padding: EdgeInsets.fromLTRB(fromL,fromT,fromR,fromB),
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
                        Wrap(
                          children: <Widget>[
                            Container(

                              child:
                              Column(
                                children: <Widget>[

                                  Text("Set Time",
                                    style: TextStyle(
                                      color: Colors.blue[900].withOpacity(1.0),
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,

                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
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
