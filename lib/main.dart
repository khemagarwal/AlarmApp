import 'package:alarmapp/stopwatch.dart';
import 'package:alarmapp/timer.dart';
import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';

import 'alarm.dart';
import 'clock.dart';

void main() {
  runApp(MaterialApp(
    home: Clock(),
  ));
}

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  int selectedIndex=0;

  final widgetOptions =

  [

    clock(),
    alarm(),
    timer(),
    stopwatch(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      widgetOptions.elementAt(selectedIndex),

      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.watch_later),
            title: new Text('Clock'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.alarm),
            title: new Text('Alarm'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.av_timer),
              title: Text('Timer')
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.timer),
            title: Text("Stop Watch"),
          )
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: onItemTapped,
      ) ,


//      Center(
//        child: AnalogClock(
//          decoration: BoxDecoration(
//              border: Border.all(width: 2.0, color: Colors.black),
//              color: Colors.transparent,
//              shape: BoxShape.circle),
//          width: 300.0,
//          isLive: true,
//          hourHandColor: Colors.black,
//          minuteHandColor: Colors.black,
//          showSecondHand: true,
//          numberColor: Colors.black87,
//          showNumbers: true,
//          textScaleFactor: 1.4,
//          showTicks: true,
//          showDigitalClock: true,
//
//        ),
//      ),
    );
  }
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

