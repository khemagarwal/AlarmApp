import 'package:flutter/cupertino.dart';

class timer extends StatefulWidget {
  @override
  _timerState createState() => _timerState();
}

class _timerState extends State<timer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Timer"),
      ),
    );
  }
}
