import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class clock extends StatefulWidget {
  @override
  _clockState createState() => _clockState();
}

class _clockState extends State<clock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body:

          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
            color: Colors.black,
                child:
                AnalogClock(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.white),
                      color: Colors.transparent,
                      shape: BoxShape.circle),
                  width: 300.0,
                  isLive: true,
                  hourHandColor: Colors.white,
                  minuteHandColor: Colors.white,
                  showSecondHand: true,
                  numberColor: Colors.white,
                  showNumbers: true,
                  textScaleFactor: 1.4,
                  showTicks: true,
                  showDigitalClock: true,
                  digitalClockColor: Colors.white,

                )
            ),
          ),
        );




  }
}
